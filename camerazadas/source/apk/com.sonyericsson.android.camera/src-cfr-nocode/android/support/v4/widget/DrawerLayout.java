/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.IntDef;
import android.support.annotation.Nullable;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DrawerLayout
extends ViewGroup {
    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int[] LAYOUT_ATTRS;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    private final ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;
    private DrawerListener mListener;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mMinDrawerMargin;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowLeft;
    private Drawable mShadowRight;
    private CharSequence mTitleLeft;
    private CharSequence mTitleRight;

    static;

    public DrawerLayout(Context var1);

    public DrawerLayout(Context var1, AttributeSet var2);

    public DrawerLayout(Context var1, AttributeSet var2, int var3);

    static /* synthetic */ int[] access$100();

    static /* synthetic */ View access$200(DrawerLayout var0);

    static /* synthetic */ boolean access$300(View var0);

    private View findVisibleDrawer();

    static String gravityToString(int var0);

    private static boolean hasOpaqueBackground(View var0);

    private boolean hasPeekingDrawer();

    private boolean hasVisibleDrawer();

    private static boolean includeChildForAccessibilitiy(View var0);

    @Override
    public void addView(View var1, int var2, ViewGroup.LayoutParams var3);

    void cancelChildViewTouch();

    boolean checkDrawerViewAbsoluteGravity(View var1, int var2);

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams var1);

    public void closeDrawer(int var1);

    public void closeDrawer(View var1);

    public void closeDrawers();

    void closeDrawers(boolean var1);

    @Override
    public void computeScroll();

    void dispatchOnDrawerClosed(View var1);

    void dispatchOnDrawerOpened(View var1);

    void dispatchOnDrawerSlide(View var1, float var2);

    @Override
    protected boolean drawChild(Canvas var1, View var2, long var3);

    View findDrawerWithGravity(int var1);

    View findOpenDrawer();

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams();

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet var1);

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams var1);

    public int getDrawerLockMode(int var1);

    public int getDrawerLockMode(View var1);

    @Nullable
    public CharSequence getDrawerTitle(int var1);

    int getDrawerViewAbsoluteGravity(View var1);

    float getDrawerViewOffset(View var1);

    boolean isContentView(View var1);

    public boolean isDrawerOpen(int var1);

    public boolean isDrawerOpen(View var1);

    boolean isDrawerView(View var1);

    public boolean isDrawerVisible(int var1);

    public boolean isDrawerVisible(View var1);

    void moveDrawerToOffset(View var1, float var2);

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1);

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public boolean onKeyUp(int var1, KeyEvent var2);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    @Override
    protected void onRestoreInstanceState(Parcelable var1);

    @Override
    protected Parcelable onSaveInstanceState();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void openDrawer(int var1);

    public void openDrawer(View var1);

    @Override
    public void requestDisallowInterceptTouchEvent(boolean var1);

    @Override
    public void requestLayout();

    public void setDrawerListener(DrawerListener var1);

    public void setDrawerLockMode(int var1);

    public void setDrawerLockMode(int var1, int var2);

    public void setDrawerLockMode(int var1, View var2);

    public void setDrawerShadow(int var1, int var2);

    public void setDrawerShadow(Drawable var1, int var2);

    public void setDrawerTitle(int var1, CharSequence var2);

    void setDrawerViewOffset(View var1, float var2);

    public void setScrimColor(int var1);

    void updateDrawerState(int var1, int var2, View var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class AccessibilityDelegate
    extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;
        final /* synthetic */ DrawerLayout this$0;

        AccessibilityDelegate(DrawerLayout var1);

        private void addChildrenForAccessibility(AccessibilityNodeInfoCompat var1, ViewGroup var2);

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat var1, AccessibilityNodeInfoCompat var2);

        @Override
        public boolean dispatchPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class ChildAccessibilityDelegate
    extends AccessibilityDelegateCompat {
        final /* synthetic */ DrawerLayout this$0;

        ChildAccessibilityDelegate(DrawerLayout var1);

        @Override
        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);
    }

    public static interface DrawerListener {
        public void onDrawerClosed(View var1);

        public void onDrawerOpened(View var1);

        public void onDrawerSlide(View var1, float var2);

        public void onDrawerStateChanged(int var1);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={3, 5, 8388611, 8388613})
    private static @interface EdgeGravity {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        public int gravity;
        boolean isPeeking;
        boolean knownOpen;
        float onScreen;

        public LayoutParams(int var1, int var2);

        public LayoutParams(int var1, int var2, int var3);

        public LayoutParams(Context var1, AttributeSet var2);

        public LayoutParams(LayoutParams var1);

        public LayoutParams(ViewGroup.LayoutParams var1);

        public LayoutParams(ViewGroup.MarginLayoutParams var1);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2})
    private static @interface LockMode {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR;
        int lockModeLeft;
        int lockModeRight;
        int openDrawerGravity;

        static;

        public SavedState(Parcel var1);

        public SavedState(Parcelable var1);

        @Override
        public void writeToParcel(Parcel var1, int var2);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class SimpleDrawerListener
    implements DrawerListener {
        public SimpleDrawerListener();

        @Override
        public void onDrawerClosed(View var1);

        @Override
        public void onDrawerOpened(View var1);

        @Override
        public void onDrawerSlide(View var1, float var2);

        @Override
        public void onDrawerStateChanged(int var1);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2})
    private static @interface State {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewDragCallback
    extends ViewDragHelper.Callback {
        private final int mAbsGravity;
        private ViewDragHelper mDragger;
        private final Runnable mPeekRunnable;
        final /* synthetic */ DrawerLayout this$0;

        public ViewDragCallback(DrawerLayout var1, int var2);

        static /* synthetic */ void access$000(ViewDragCallback var0);

        private void closeOtherDrawer();

        private void peekDrawer();

        @Override
        public int clampViewPositionHorizontal(View var1, int var2, int var3);

        @Override
        public int clampViewPositionVertical(View var1, int var2, int var3);

        @Override
        public int getViewHorizontalDragRange(View var1);

        @Override
        public void onEdgeDragStarted(int var1, int var2);

        @Override
        public boolean onEdgeLock(int var1);

        @Override
        public void onEdgeTouched(int var1, int var2);

        @Override
        public void onViewCaptured(View var1, int var2);

        @Override
        public void onViewDragStateChanged(int var1);

        @Override
        public void onViewPositionChanged(View var1, int var2, int var3, int var4, int var5);

        @Override
        public void onViewReleased(View var1, float var2, float var3);

        public void removeCallbacks();

        public void setDragger(ViewDragHelper var1);

        @Override
        public boolean tryCaptureView(View var1, int var2);

    }

}

