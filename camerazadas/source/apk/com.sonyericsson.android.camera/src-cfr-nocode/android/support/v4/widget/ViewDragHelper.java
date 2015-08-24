/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.support.v4.widget.ScrollerCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private static final Interpolator sInterpolator;
    private int mActivePointerId;
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

    static;

    private ViewDragHelper(Context var1, ViewGroup var2, Callback var3);

    private boolean checkNewEdgeDrag(float var1, float var2, int var3, int var4);

    private boolean checkTouchSlop(View var1, float var2, float var3);

    private float clampMag(float var1, float var2, float var3);

    private int clampMag(int var1, int var2, int var3);

    private void clearMotionHistory();

    private void clearMotionHistory(int var1);

    private int computeAxisDuration(int var1, int var2, int var3);

    private int computeSettleDuration(View var1, int var2, int var3, int var4, int var5);

    public static ViewDragHelper create(ViewGroup var0, float var1, Callback var2);

    public static ViewDragHelper create(ViewGroup var0, Callback var1);

    private void dispatchViewReleased(float var1, float var2);

    private float distanceInfluenceForSnapDuration(float var1);

    private void dragTo(int var1, int var2, int var3, int var4);

    private void ensureMotionHistorySizeForId(int var1);

    private boolean forceSettleCapturedViewAt(int var1, int var2, int var3, int var4);

    private int getEdgesTouched(int var1, int var2);

    private void releaseViewForPointerUp();

    private void reportNewEdgeDrags(float var1, float var2, int var3);

    private void saveInitialMotion(float var1, float var2, int var3);

    private void saveLastMotion(MotionEvent var1);

    public void abort();

    protected boolean canScroll(View var1, boolean var2, int var3, int var4, int var5, int var6);

    public void cancel();

    public void captureChildView(View var1, int var2);

    public boolean checkTouchSlop(int var1);

    public boolean checkTouchSlop(int var1, int var2);

    public boolean continueSettling(boolean var1);

    public View findTopChildUnder(int var1, int var2);

    public void flingCapturedView(int var1, int var2, int var3, int var4);

    public int getActivePointerId();

    public View getCapturedView();

    public int getEdgeSize();

    public float getMinVelocity();

    public int getTouchSlop();

    public int getViewDragState();

    public boolean isCapturedViewUnder(int var1, int var2);

    public boolean isEdgeTouched(int var1);

    public boolean isEdgeTouched(int var1, int var2);

    public boolean isPointerDown(int var1);

    public boolean isViewUnder(View var1, int var2, int var3);

    public void processTouchEvent(MotionEvent var1);

    void setDragState(int var1);

    public void setEdgeTrackingEnabled(int var1);

    public void setMinVelocity(float var1);

    public boolean settleCapturedViewAt(int var1, int var2);

    public boolean shouldInterceptTouchEvent(MotionEvent var1);

    public boolean smoothSlideViewTo(View var1, int var2, int var3);

    boolean tryCaptureViewForDrag(View var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Callback {
        public Callback();

        public int clampViewPositionHorizontal(View var1, int var2, int var3);

        public int clampViewPositionVertical(View var1, int var2, int var3);

        public int getOrderedChildIndex(int var1);

        public int getViewHorizontalDragRange(View var1);

        public int getViewVerticalDragRange(View var1);

        public void onEdgeDragStarted(int var1, int var2);

        public boolean onEdgeLock(int var1);

        public void onEdgeTouched(int var1, int var2);

        public void onViewCaptured(View var1, int var2);

        public void onViewDragStateChanged(int var1);

        public void onViewPositionChanged(View var1, int var2, int var3, int var4, int var5);

        public void onViewReleased(View var1, float var2, float var3);

        public abstract boolean tryCaptureView(View var1, int var2);
    }

}

