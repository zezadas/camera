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
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SlidingPaneLayout
extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList<DisableLayerRunnable> mPostedRunnables;
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    static;

    public SlidingPaneLayout(Context var1);

    public SlidingPaneLayout(Context var1, AttributeSet var2);

    public SlidingPaneLayout(Context var1, AttributeSet var2, int var3);

    static /* synthetic */ boolean access$100(SlidingPaneLayout var0);

    static /* synthetic */ void access$1000(SlidingPaneLayout var0, View var1);

    static /* synthetic */ ArrayList access$1100(SlidingPaneLayout var0);

    static /* synthetic */ ViewDragHelper access$200(SlidingPaneLayout var0);

    static /* synthetic */ float access$300(SlidingPaneLayout var0);

    static /* synthetic */ View access$400(SlidingPaneLayout var0);

    static /* synthetic */ boolean access$502(SlidingPaneLayout var0, boolean var1);

    static /* synthetic */ void access$600(SlidingPaneLayout var0, int var1);

    static /* synthetic */ boolean access$700(SlidingPaneLayout var0);

    static /* synthetic */ int access$800(SlidingPaneLayout var0);

    private boolean closePane(View var1, int var2);

    private void dimChildView(View var1, float var2, int var3);

    private void invalidateChildRegion(View var1);

    private boolean isLayoutRtlSupport();

    private void onPanelDragged(int var1);

    private boolean openPane(View var1, int var2);

    private void parallaxOtherViews(float var1);

    private static boolean viewIsOpaque(View var0);

    protected boolean canScroll(View var1, boolean var2, int var3, int var4, int var5);

    @Deprecated
    public boolean canSlide();

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams var1);

    public boolean closePane();

    @Override
    public void computeScroll();

    void dispatchOnPanelClosed(View var1);

    void dispatchOnPanelOpened(View var1);

    void dispatchOnPanelSlide(View var1);

    @Override
    public void draw(Canvas var1);

    @Override
    protected boolean drawChild(Canvas var1, View var2, long var3);

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams();

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet var1);

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams var1);

    public int getCoveredFadeColor();

    public int getParallaxDistance();

    public int getSliderFadeColor();

    boolean isDimmed(View var1);

    public boolean isOpen();

    public boolean isSlideable();

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    @Override
    protected void onRestoreInstanceState(Parcelable var1);

    @Override
    protected Parcelable onSaveInstanceState();

    @Override
    protected void onSizeChanged(int var1, int var2, int var3, int var4);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public boolean openPane();

    @Override
    public void requestChildFocus(View var1, View var2);

    void setAllChildrenVisible();

    public void setCoveredFadeColor(int var1);

    public void setPanelSlideListener(PanelSlideListener var1);

    public void setParallaxDistance(int var1);

    @Deprecated
    public void setShadowDrawable(Drawable var1);

    public void setShadowDrawableLeft(Drawable var1);

    public void setShadowDrawableRight(Drawable var1);

    @Deprecated
    public void setShadowResource(int var1);

    public void setShadowResourceLeft(int var1);

    public void setShadowResourceRight(int var1);

    public void setSliderFadeColor(int var1);

    @Deprecated
    public void smoothSlideClosed();

    @Deprecated
    public void smoothSlideOpen();

    boolean smoothSlideTo(float var1, int var2);

    void updateObscuredViewsVisibility(View var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class AccessibilityDelegate
    extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;
        final /* synthetic */ SlidingPaneLayout this$0;

        AccessibilityDelegate(SlidingPaneLayout var1);

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat var1, AccessibilityNodeInfoCompat var2);

        public boolean filter(View var1);

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
    private class DisableLayerRunnable
    implements Runnable {
        final View mChildView;
        final /* synthetic */ SlidingPaneLayout this$0;

        DisableLayerRunnable(SlidingPaneLayout var1, View var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DragHelperCallback
    extends ViewDragHelper.Callback {
        final /* synthetic */ SlidingPaneLayout this$0;

        private DragHelperCallback(SlidingPaneLayout var1);

        /* synthetic */ DragHelperCallback(SlidingPaneLayout var1,  var2);

        @Override
        public int clampViewPositionHorizontal(View var1, int var2, int var3);

        @Override
        public int clampViewPositionVertical(View var1, int var2, int var3);

        @Override
        public int getViewHorizontalDragRange(View var1);

        @Override
        public void onEdgeDragStarted(int var1, int var2);

        @Override
        public void onViewCaptured(View var1, int var2);

        @Override
        public void onViewDragStateChanged(int var1);

        @Override
        public void onViewPositionChanged(View var1, int var2, int var3, int var4, int var5);

        @Override
        public void onViewReleased(View var1, float var2, float var3);

        @Override
        public boolean tryCaptureView(View var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        private static final int[] ATTRS;
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;

        static;

        public LayoutParams();

        public LayoutParams(int var1, int var2);

        public LayoutParams(Context var1, AttributeSet var2);

        public LayoutParams(LayoutParams var1);

        public LayoutParams(ViewGroup.LayoutParams var1);

        public LayoutParams(ViewGroup.MarginLayoutParams var1);
    }

    public static interface PanelSlideListener {
        public void onPanelClosed(View var1);

        public void onPanelOpened(View var1);

        public void onPanelSlide(View var1, float var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR;
        boolean isOpen;

        static;

        private SavedState(Parcel var1);

        /* synthetic */ SavedState(Parcel var1, android.support.v4.widget.SlidingPaneLayout$1 var2);

        SavedState(Parcelable var1);

        @Override
        public void writeToParcel(Parcel var1, int var2);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class SimplePanelSlideListener
    implements PanelSlideListener {
        public SimplePanelSlideListener();

        @Override
        public void onPanelClosed(View var1);

        @Override
        public void onPanelOpened(View var1);

        @Override
        public void onPanelSlide(View var1, float var2);
    }

    static interface SlidingPanelLayoutImpl {
        public void invalidateChildRegion(SlidingPaneLayout var1, View var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class SlidingPanelLayoutImplBase
    implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase();

        @Override
        public void invalidateChildRegion(SlidingPaneLayout var1, View var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class SlidingPanelLayoutImplJB
    extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        SlidingPanelLayoutImplJB();

        @Override
        public void invalidateChildRegion(SlidingPaneLayout var1, View var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class SlidingPanelLayoutImplJBMR1
    extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1();

        @Override
        public void invalidateChildRegion(SlidingPaneLayout var1, View var2);
    }

}

