/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator(){

        @Override
        public float getInterpolation(float f) {
            return f * f * f * f * (f-=1.0f) + 1.0f;
        }
    };
    private int mActivePointerId = -1;
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private ScrollerCompat mScroller;
    private final Runnable mSetIdleRunnable;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;

    private ViewDragHelper(Context context, ViewGroup object, Callback callback) {
        this.mSetIdleRunnable = new Runnable(){

            @Override
            public void run() {
                ViewDragHelper.this.setDragState(0);
            }
        };
        if (object == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.mParentView = object;
        this.mCallback = callback;
        object = ViewConfiguration.get(context);
        this.mEdgeSize = (int)(20.0f * context.getResources().getDisplayMetrics().density + 0.5f);
        this.mTouchSlop = object.getScaledTouchSlop();
        this.mMaxVelocity = object.getScaledMaximumFlingVelocity();
        this.mMinVelocity = object.getScaledMinimumFlingVelocity();
        this.mScroller = ScrollerCompat.create(context, sInterpolator);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean checkNewEdgeDrag(float f, float f2, int n, int n2) {
        f = Math.abs(f);
        f2 = Math.abs(f2);
        if ((this.mInitialEdgesTouched[n] & n2) != n2) return false;
        if ((this.mTrackingEdges & n2) == 0) return false;
        if ((this.mEdgeDragsLocked[n] & n2) == n2) return false;
        if ((this.mEdgeDragsInProgress[n] & n2) == n2) return false;
        if (f <= (float)this.mTouchSlop && f2 <= (float)this.mTouchSlop) {
            return false;
        }
        if (f < 0.5f * f2 && this.mCallback.onEdgeLock(n2)) {
            int[] arrn = this.mEdgeDragsLocked;
            arrn[n] = arrn[n] | n2;
            return false;
        }
        if ((this.mEdgeDragsInProgress[n] & n2) != 0) return false;
        if (f <= (float)this.mTouchSlop) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean checkTouchSlop(View view, float f, float f2) {
        boolean bl = true;
        if (view == null) {
            return false;
        }
        boolean bl2 = this.mCallback.getViewHorizontalDragRange(view) > 0;
        if (this.mCallback.getViewVerticalDragRange(view) <= 0) return false;
        boolean bl3 = true;
        if (bl2 && bl3) {
            if (f * f + f2 * f2 > (float)(this.mTouchSlop * this.mTouchSlop)) return bl;
            return false;
        }
        if (bl2) {
            if (Math.abs(f) > (float)this.mTouchSlop) return bl;
            return false;
        }
        if (!bl3) {
            return false;
        }
        if (Math.abs(f2) > (float)this.mTouchSlop) return bl;
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private float clampMag(float f, float f2, float f3) {
        float f4 = Math.abs(f);
        if (f4 < f2) {
            return 0.0f;
        }
        if (f4 <= f3) return f;
        f2 = f3;
        if (f > 0.0f) return f2;
        return - f3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int clampMag(int n, int n2, int n3) {
        int n4 = Math.abs(n);
        if (n4 < n2) {
            return 0;
        }
        if (n4 <= n3) return n;
        n2 = n3;
        if (n > 0) return n2;
        return - n3;
    }

    private void clearMotionHistory() {
        if (this.mInitialMotionX == null) {
            return;
        }
        Arrays.fill(this.mInitialMotionX, 0.0f);
        Arrays.fill(this.mInitialMotionY, 0.0f);
        Arrays.fill(this.mLastMotionX, 0.0f);
        Arrays.fill(this.mLastMotionY, 0.0f);
        Arrays.fill(this.mInitialEdgesTouched, 0);
        Arrays.fill(this.mEdgeDragsInProgress, 0);
        Arrays.fill(this.mEdgeDragsLocked, 0);
        this.mPointersDown = 0;
    }

    private void clearMotionHistory(int n) {
        if (this.mInitialMotionX == null) {
            return;
        }
        this.mInitialMotionX[n] = 0.0f;
        this.mInitialMotionY[n] = 0.0f;
        this.mLastMotionX[n] = 0.0f;
        this.mLastMotionY[n] = 0.0f;
        this.mInitialEdgesTouched[n] = 0;
        this.mEdgeDragsInProgress[n] = 0;
        this.mEdgeDragsLocked[n] = 0;
        this.mPointersDown&=~ (1 << n);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int computeAxisDuration(int n, int n2, int n3) {
        if (n == 0) {
            return 0;
        }
        int n4 = this.mParentView.getWidth();
        int n5 = n4 / 2;
        float f = Math.min(1.0f, (float)Math.abs(n) / (float)n4);
        float f2 = n5;
        float f3 = n5;
        f = this.distanceInfluenceForSnapDuration(f);
        if ((n2 = Math.abs(n2)) > 0) {
            n = Math.round(1000.0f * Math.abs((f2 + f3 * f) / (float)n2)) * 4;
            do {
                return Math.min(n, 600);
                break;
            } while (true);
        }
        n = (int)(((float)Math.abs(n) / (float)n3 + 1.0f) * 256.0f);
        return Math.min(n, 600);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int computeSettleDuration(View view, int n, int n2, int n3, int n4) {
        n3 = this.clampMag(n3, (int)this.mMinVelocity, (int)this.mMaxVelocity);
        n4 = this.clampMag(n4, (int)this.mMinVelocity, (int)this.mMaxVelocity);
        int n5 = Math.abs(n);
        int n6 = Math.abs(n2);
        int n7 = Math.abs(n3);
        int n8 = Math.abs(n4);
        int n9 = n7 + n8;
        int n10 = n5 + n6;
        float f = n3 != 0 ? (float)n7 / (float)n9 : (float)n5 / (float)n10;
        float f2 = n4 != 0 ? (float)n8 / (float)n9 : (float)n6 / (float)n10;
        n = this.computeAxisDuration(n, n3, this.mCallback.getViewHorizontalDragRange(view));
        n2 = this.computeAxisDuration(n2, n4, this.mCallback.getViewVerticalDragRange(view));
        return (int)((float)n * f + (float)n2 * f2);
    }

    public static ViewDragHelper create(ViewGroup object, float f, Callback callback) {
        object = ViewDragHelper.create((ViewGroup)object, callback);
        object.mTouchSlop = (int)((float)object.mTouchSlop * (1.0f / f));
        return object;
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private void dispatchViewReleased(float f, float f2) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f2);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            this.setDragState(0);
        }
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float)Math.sin((float)((double)(f - 0.5f) * 0.4712389167638204));
    }

    private void dragTo(int n, int n2, int n3, int n4) {
        int n5 = n;
        int n6 = n2;
        int n7 = this.mCapturedView.getLeft();
        int n8 = this.mCapturedView.getTop();
        if (n3 != 0) {
            n5 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, n, n3);
            this.mCapturedView.offsetLeftAndRight(n5 - n7);
        }
        if (n4 != 0) {
            n6 = this.mCallback.clampViewPositionVertical(this.mCapturedView, n2, n4);
            this.mCapturedView.offsetTopAndBottom(n6 - n8);
        }
        if (n3 != 0 || n4 != 0) {
            this.mCallback.onViewPositionChanged(this.mCapturedView, n5, n6, n5 - n7, n6 - n8);
        }
    }

    private void ensureMotionHistorySizeForId(int n) {
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= n) {
            float[] arrf = new float[n + 1];
            float[] arrf2 = new float[n + 1];
            float[] arrf3 = new float[n + 1];
            float[] arrf4 = new float[n + 1];
            int[] arrn = new int[n + 1];
            int[] arrn2 = new int[n + 1];
            int[] arrn3 = new int[n + 1];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, 0, arrf, 0, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, 0, arrf2, 0, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, 0, arrf3, 0, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, 0, arrf4, 0, this.mLastMotionY.length);
                System.arraycopy(this.mInitialEdgesTouched, 0, arrn, 0, this.mInitialEdgesTouched.length);
                System.arraycopy(this.mEdgeDragsInProgress, 0, arrn2, 0, this.mEdgeDragsInProgress.length);
                System.arraycopy(this.mEdgeDragsLocked, 0, arrn3, 0, this.mEdgeDragsLocked.length);
            }
            this.mInitialMotionX = arrf;
            this.mInitialMotionY = arrf2;
            this.mLastMotionX = arrf3;
            this.mLastMotionY = arrf4;
            this.mInitialEdgesTouched = arrn;
            this.mEdgeDragsInProgress = arrn2;
            this.mEdgeDragsLocked = arrn3;
        }
    }

    private boolean forceSettleCapturedViewAt(int n, int n2, int n3, int n4) {
        int n5 = this.mCapturedView.getLeft();
        int n6 = this.mCapturedView.getTop();
        if ((n-=n5) == 0 && (n2-=n6) == 0) {
            this.mScroller.abortAnimation();
            this.setDragState(0);
            return false;
        }
        n3 = this.computeSettleDuration(this.mCapturedView, n, n2, n3, n4);
        this.mScroller.startScroll(n5, n6, n, n2, n3);
        this.setDragState(2);
        return true;
    }

    private int getEdgesTouched(int n, int n2) {
        int n3 = 0;
        if (n < this.mParentView.getLeft() + this.mEdgeSize) {
            n3 = false | true;
        }
        int n4 = n3;
        if (n2 < this.mParentView.getTop() + this.mEdgeSize) {
            n4 = n3 | 4;
        }
        n3 = n4;
        if (n > this.mParentView.getRight() - this.mEdgeSize) {
            n3 = n4 | 2;
        }
        n = n3;
        if (n2 > this.mParentView.getBottom() - this.mEdgeSize) {
            n = n3 | 8;
        }
        return n;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        this.dispatchViewReleased(this.clampMag(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), this.clampMag(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void reportNewEdgeDrags(float f, float f2, int n) {
        int n2 = 0;
        if (this.checkNewEdgeDrag(f, f2, n, 1)) {
            n2 = false | true;
        }
        int n3 = n2;
        if (this.checkNewEdgeDrag(f2, f, n, 4)) {
            n3 = n2 | 4;
        }
        n2 = n3;
        if (this.checkNewEdgeDrag(f, f2, n, 2)) {
            n2 = n3 | 2;
        }
        n3 = n2;
        if (this.checkNewEdgeDrag(f2, f, n, 8)) {
            n3 = n2 | 8;
        }
        if (n3 != 0) {
            int[] arrn = this.mEdgeDragsInProgress;
            arrn[n] = arrn[n] | n3;
            this.mCallback.onEdgeDragStarted(n3, n);
        }
    }

    private void saveInitialMotion(float f, float f2, int n) {
        this.ensureMotionHistorySizeForId(n);
        float[] arrf = this.mInitialMotionX;
        this.mLastMotionX[n] = f;
        arrf[n] = f;
        arrf = this.mInitialMotionY;
        this.mLastMotionY[n] = f2;
        arrf[n] = f2;
        this.mInitialEdgesTouched[n] = this.getEdgesTouched((int)f, (int)f2);
        this.mPointersDown|=1 << n;
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int n = MotionEventCompat.getPointerCount(motionEvent);
        for (int i = 0; i < n; ++i) {
            int n2 = MotionEventCompat.getPointerId(motionEvent, i);
            float f = MotionEventCompat.getX(motionEvent, i);
            float f2 = MotionEventCompat.getY(motionEvent, i);
            this.mLastMotionX[n2] = f;
            this.mLastMotionY[n2] = f2;
        }
    }

    public void abort() {
        this.cancel();
        if (this.mDragState == 2) {
            int n = this.mScroller.getCurrX();
            int n2 = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int n3 = this.mScroller.getCurrX();
            int n4 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, n3, n4, n3 - n, n4 - n2);
        }
        this.setDragState(0);
    }

    protected boolean canScroll(View view, boolean bl, int n, int n2, int n3, int n4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup)view;
            int n5 = view.getScrollX();
            int n6 = view.getScrollY();
            for (int i = viewGroup.getChildCount() - 1; i >= 0; --i) {
                View view2 = viewGroup.getChildAt(i);
                if (n3 + n5 < view2.getLeft() || n3 + n5 >= view2.getRight() || n4 + n6 < view2.getTop() || n4 + n6 >= view2.getBottom() || !this.canScroll(view2, true, n, n2, n3 + n5 - view2.getLeft(), n4 + n6 - view2.getTop())) continue;
                return true;
            }
        }
        if (bl && (ViewCompat.canScrollHorizontally(view, - n) || ViewCompat.canScrollVertically(view, - n2))) {
            return true;
        }
        return false;
    }

    public void cancel() {
        this.mActivePointerId = -1;
        this.clearMotionHistory();
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void captureChildView(View view, int n) {
        if (view.getParent() != this.mParentView) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
        }
        this.mCapturedView = view;
        this.mActivePointerId = n;
        this.mCallback.onViewCaptured(view, n);
        this.setDragState(1);
    }

    public boolean checkTouchSlop(int n) {
        int n2 = this.mInitialMotionX.length;
        for (int i = 0; i < n2; ++i) {
            if (!this.checkTouchSlop(n, i)) continue;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean checkTouchSlop(int n, int n2) {
        boolean bl = true;
        if (!this.isPointerDown(n2)) {
            return false;
        }
        boolean bl2 = (n & 1) == 1;
        n = (n & 2) == 2 ? 1 : 0;
        float f = this.mLastMotionX[n2] - this.mInitialMotionX[n2];
        float f2 = this.mLastMotionY[n2] - this.mInitialMotionY[n2];
        if (bl2 && n != 0) {
            if (f * f + f2 * f2 > (float)(this.mTouchSlop * this.mTouchSlop)) return bl;
            return false;
        }
        if (bl2) {
            if (Math.abs(f) > (float)this.mTouchSlop) return bl;
            return false;
        }
        if (n == 0) {
            return false;
        }
        if (Math.abs(f2) > (float)this.mTouchSlop) return bl;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean continueSettling(boolean bl) {
        if (this.mDragState == 2) {
            boolean bl2 = this.mScroller.computeScrollOffset();
            int n = this.mScroller.getCurrX();
            int n2 = this.mScroller.getCurrY();
            int n3 = n - this.mCapturedView.getLeft();
            int n4 = n2 - this.mCapturedView.getTop();
            if (n3 != 0) {
                this.mCapturedView.offsetLeftAndRight(n3);
            }
            if (n4 != 0) {
                this.mCapturedView.offsetTopAndBottom(n4);
            }
            if (n3 != 0 || n4 != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, n, n2, n3, n4);
            }
            boolean bl3 = bl2;
            if (bl2) {
                bl3 = bl2;
                if (n == this.mScroller.getFinalX()) {
                    bl3 = bl2;
                    if (n2 == this.mScroller.getFinalY()) {
                        this.mScroller.abortAnimation();
                        bl3 = this.mScroller.isFinished();
                    }
                }
            }
            if (!bl3) {
                if (bl) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    this.setDragState(0);
                }
            }
        }
        if (this.mDragState == 2) {
            return true;
        }
        return false;
    }

    public View findTopChildUnder(int n, int n2) {
        for (int i = this.mParentView.getChildCount() - 1; i >= 0; --i) {
            View view = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(i));
            if (n < view.getLeft() || n >= view.getRight() || n2 < view.getTop() || n2 >= view.getBottom()) continue;
            return view;
        }
        return null;
    }

    public void flingCapturedView(int n, int n2, int n3, int n4) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), n, n3, n2, n4);
        this.setDragState(2);
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    public View getCapturedView() {
        return this.mCapturedView;
    }

    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public boolean isCapturedViewUnder(int n, int n2) {
        return this.isViewUnder(this.mCapturedView, n, n2);
    }

    public boolean isEdgeTouched(int n) {
        int n2 = this.mInitialEdgesTouched.length;
        for (int i = 0; i < n2; ++i) {
            if (!this.isEdgeTouched(n, i)) continue;
            return true;
        }
        return false;
    }

    public boolean isEdgeTouched(int n, int n2) {
        if (this.isPointerDown(n2) && (this.mInitialEdgesTouched[n2] & n) != 0) {
            return true;
        }
        return false;
    }

    public boolean isPointerDown(int n) {
        if ((this.mPointersDown & 1 << n) != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isViewUnder(View view, int n, int n2) {
        if (view == null || n < view.getLeft() || n >= view.getRight() || n2 < view.getTop() || n2 >= view.getBottom()) {
            return false;
        }
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void processTouchEvent(MotionEvent var1_1) {
        var7_2 = MotionEventCompat.getActionMasked((MotionEvent)var1_1);
        var6_3 = MotionEventCompat.getActionIndex((MotionEvent)var1_1);
        if (var7_2 == 0) {
            this.cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement((MotionEvent)var1_1);
        switch (var7_2) {
            default: {
                return;
            }
            case 0: {
                var2_4 = var1_1.getX();
                var3_9 = var1_1.getY();
                var6_3 = MotionEventCompat.getPointerId((MotionEvent)var1_1, 0);
                var1_1 = this.findTopChildUnder((int)var2_4, (int)var3_9);
                this.saveInitialMotion(var2_4, var3_9, var6_3);
                this.tryCaptureViewForDrag((View)var1_1, var6_3);
                var7_2 = this.mInitialEdgesTouched[var6_3];
                if ((this.mTrackingEdges & var7_2) == 0) return;
                this.mCallback.onEdgeTouched(this.mTrackingEdges & var7_2, var6_3);
                return;
            }
            case 5: {
                var7_2 = MotionEventCompat.getPointerId((MotionEvent)var1_1, var6_3);
                var2_5 = MotionEventCompat.getX((MotionEvent)var1_1, var6_3);
                var3_10 = MotionEventCompat.getY((MotionEvent)var1_1, var6_3);
                this.saveInitialMotion(var2_5, var3_10, var7_2);
                if (this.mDragState == 0) {
                    this.tryCaptureViewForDrag(this.findTopChildUnder((int)var2_5, (int)var3_10), var7_2);
                    var6_3 = this.mInitialEdgesTouched[var7_2];
                    if ((this.mTrackingEdges & var6_3) == 0) return;
                    this.mCallback.onEdgeTouched(this.mTrackingEdges & var6_3, var7_2);
                    return;
                }
                if (this.isCapturedViewUnder((int)var2_5, (int)var3_10) == false) return;
                this.tryCaptureViewForDrag(this.mCapturedView, var7_2);
                return;
            }
            case 2: {
                if (this.mDragState == 1) {
                    var6_3 = MotionEventCompat.findPointerIndex((MotionEvent)var1_1, this.mActivePointerId);
                    var2_6 = MotionEventCompat.getX((MotionEvent)var1_1, var6_3);
                    var3_11 = MotionEventCompat.getY((MotionEvent)var1_1, var6_3);
                    var6_3 = (int)(var2_6 - this.mLastMotionX[this.mActivePointerId]);
                    var7_2 = (int)(var3_11 - this.mLastMotionY[this.mActivePointerId]);
                    this.dragTo(this.mCapturedView.getLeft() + var6_3, this.mCapturedView.getTop() + var7_2, var6_3, var7_2);
                    this.saveLastMotion((MotionEvent)var1_1);
                    return;
                }
                var7_2 = MotionEventCompat.getPointerCount((MotionEvent)var1_1);
                var6_3 = 0;
                do {
                    if (var6_3 >= var7_2) ** GOTO lbl-1000
                    var8_16 = MotionEventCompat.getPointerId((MotionEvent)var1_1, var6_3);
                    var2_7 = MotionEventCompat.getX((MotionEvent)var1_1, var6_3);
                    var3_12 = MotionEventCompat.getY((MotionEvent)var1_1, var6_3);
                    var4_14 = var2_7 - this.mInitialMotionX[var8_16];
                    var5_15 = var3_12 - this.mInitialMotionY[var8_16];
                    this.reportNewEdgeDrags(var4_14, var5_15, var8_16);
                    if (this.mDragState == 1 || this.checkTouchSlop(var11_18 = this.findTopChildUnder((int)var2_7, (int)var3_12), var4_14, var5_15) && this.tryCaptureViewForDrag(var11_18, var8_16)) lbl-1000: // 2 sources:
                    {
                        this.saveLastMotion((MotionEvent)var1_1);
                        return;
                    }
                    ++var6_3;
                } while (true);
            }
            case 6: {
                var9_19 = MotionEventCompat.getPointerId((MotionEvent)var1_1, var6_3);
                if (this.mDragState == 1 && var9_19 == this.mActivePointerId) {
                    var8_17 = -1;
                    var10_20 = MotionEventCompat.getPointerCount((MotionEvent)var1_1);
                    var6_3 = 0;
                    do {
                        var7_2 = var8_17;
                        if (var6_3 >= var10_20) break;
                        var7_2 = MotionEventCompat.getPointerId((MotionEvent)var1_1, var6_3);
                        if (var7_2 != this.mActivePointerId && this.findTopChildUnder((int)(var2_8 = MotionEventCompat.getX((MotionEvent)var1_1, var6_3)), (int)(var3_13 = MotionEventCompat.getY((MotionEvent)var1_1, var6_3))) == this.mCapturedView && this.tryCaptureViewForDrag(this.mCapturedView, var7_2)) {
                            var7_2 = this.mActivePointerId;
                            break;
                        }
                        ++var6_3;
                    } while (true);
                    if (var7_2 == -1) {
                        this.releaseViewForPointerUp();
                    }
                }
                this.clearMotionHistory(var9_19);
                return;
            }
            case 1: {
                if (this.mDragState == 1) {
                    this.releaseViewForPointerUp();
                }
                this.cancel();
                return;
            }
            case 3: 
        }
        if (this.mDragState == 1) {
            this.dispatchViewReleased(0.0f, 0.0f);
        }
        this.cancel();
    }

    void setDragState(int n) {
        if (this.mDragState != n) {
            this.mDragState = n;
            this.mCallback.onViewDragStateChanged(n);
            if (n == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public void setEdgeTrackingEnabled(int n) {
        this.mTrackingEdges = n;
    }

    public void setMinVelocity(float f) {
        this.mMinVelocity = f;
    }

    public boolean settleCapturedViewAt(int n, int n2) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return this.forceSettleCapturedViewAt(n, n2, (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean shouldInterceptTouchEvent(MotionEvent object) {
        int n = MotionEventCompat.getActionMasked((MotionEvent)object);
        int n2 = MotionEventCompat.getActionIndex((MotionEvent)object);
        if (n == 0) {
            this.cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement((MotionEvent)object);
        switch (n) {
            case 0: {
                float f = object.getX();
                float f2 = object.getY();
                n2 = MotionEventCompat.getPointerId((MotionEvent)object, 0);
                this.saveInitialMotion(f, f2, n2);
                object = this.findTopChildUnder((int)f, (int)f2);
                if (object == this.mCapturedView && this.mDragState == 2) {
                    this.tryCaptureViewForDrag((View)object, n2);
                }
                if ((this.mTrackingEdges & (n = this.mInitialEdgesTouched[n2])) == 0) break;
                this.mCallback.onEdgeTouched(this.mTrackingEdges & n, n2);
                break;
            }
            case 5: {
                n = MotionEventCompat.getPointerId((MotionEvent)object, n2);
                float f = MotionEventCompat.getX((MotionEvent)object, n2);
                float f3 = MotionEventCompat.getY((MotionEvent)object, n2);
                this.saveInitialMotion(f, f3, n);
                if (this.mDragState == 0) {
                    n2 = this.mInitialEdgesTouched[n];
                    if ((this.mTrackingEdges & n2) == 0) break;
                    this.mCallback.onEdgeTouched(this.mTrackingEdges & n2, n);
                    break;
                }
                if (this.mDragState != 2 || (object = this.findTopChildUnder((int)f, (int)f3)) != this.mCapturedView) break;
                this.tryCaptureViewForDrag((View)object, n);
                break;
            }
            case 2: {
                n = MotionEventCompat.getPointerCount((MotionEvent)object);
                for (n2 = 0; n2 < n; ++n2) {
                    View view;
                    int n3 = MotionEventCompat.getPointerId((MotionEvent)object, n2);
                    float f = MotionEventCompat.getX((MotionEvent)object, n2);
                    float f4 = MotionEventCompat.getY((MotionEvent)object, n2);
                    float f5 = f - this.mInitialMotionX[n3];
                    float f6 = f4 - this.mInitialMotionY[n3];
                    this.reportNewEdgeDrags(f5, f6, n3);
                    if (this.mDragState == 1 || (view = this.findTopChildUnder((int)f, (int)f4)) != null && this.checkTouchSlop(view, f5, f6) && this.tryCaptureViewForDrag(view, n3)) break;
                }
                this.saveLastMotion((MotionEvent)object);
                break;
            }
            case 6: {
                this.clearMotionHistory(MotionEventCompat.getPointerId((MotionEvent)object, n2));
                break;
            }
            case 1: 
            case 3: {
                this.cancel();
            }
        }
        if (this.mDragState == 1) {
            return true;
        }
        return false;
    }

    public boolean smoothSlideViewTo(View view, int n, int n2) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        return this.forceSettleCapturedViewAt(n, n2, 0, 0);
    }

    boolean tryCaptureViewForDrag(View view, int n) {
        if (view == this.mCapturedView && this.mActivePointerId == n) {
            return true;
        }
        if (view != null && this.mCallback.tryCaptureView(view, n)) {
            this.mActivePointerId = n;
            this.captureChildView(view, n);
            return true;
        }
        return false;
    }

    public static abstract class Callback {
        public int clampViewPositionHorizontal(View view, int n, int n2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int n, int n2) {
            return 0;
        }

        public int getOrderedChildIndex(int n) {
            return n;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int n, int n2) {
        }

        public boolean onEdgeLock(int n) {
            return false;
        }

        public void onEdgeTouched(int n, int n2) {
        }

        public void onViewCaptured(View view, int n) {
        }

        public void onViewDragStateChanged(int n) {
        }

        public void onViewPositionChanged(View view, int n, int n2, int n3, int n4) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(View var1, int var2);
    }

}

