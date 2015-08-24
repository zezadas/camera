/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

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
    private boolean mFirstLayout = true;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList<DisableLayerRunnable> mPostedRunnables = new ArrayList();
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor = -858993460;
    private final Rect mTmpRect = new Rect();

    static {
        int n = Build.VERSION.SDK_INT;
        if (n >= 17) {
            IMPL = new SlidingPanelLayoutImplJBMR1();
            return;
        }
        if (n >= 16) {
            IMPL = new SlidingPanelLayoutImplJB();
            return;
        }
        IMPL = new SlidingPanelLayoutImplBase();
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        float f = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int)(32.0f * f + 0.5f);
        ViewConfiguration.get(context);
        this.setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        this.mDragHelper.setMinVelocity(400.0f * f);
    }

    private boolean closePane(View view, int n) {
        boolean bl = false;
        if (this.mFirstLayout || this.smoothSlideTo(0.0f, n)) {
            this.mPreservedOpenState = false;
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dimChildView(View object, float f, int n) {
        LayoutParams layoutParams = (LayoutParams)object.getLayoutParams();
        if (f > 0.0f && n != 0) {
            int n2 = (int)((float)((-16777216 & n) >>> 24) * f);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(n2 << 24 | 16777215 & n, PorterDuff.Mode.SRC_OVER));
            if (ViewCompat.getLayerType((View)object) != 2) {
                ViewCompat.setLayerType((View)object, 2, layoutParams.dimPaint);
            }
            this.invalidateChildRegion((View)object);
            return;
        } else {
            if (ViewCompat.getLayerType((View)object) == 0) return;
            {
                if (layoutParams.dimPaint != null) {
                    layoutParams.dimPaint.setColorFilter(null);
                }
                object = new DisableLayerRunnable((View)object);
                this.mPostedRunnables.add((DisableLayerRunnable)object);
                ViewCompat.postOnAnimation(this, (Runnable)object);
                return;
            }
        }
    }

    private void invalidateChildRegion(View view) {
        IMPL.invalidateChildRegion(this, view);
    }

    private boolean isLayoutRtlSupport() {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onPanelDragged(int n) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean bl = this.isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams)this.mSlideableView.getLayoutParams();
        int n2 = this.mSlideableView.getWidth();
        if (bl) {
            n = this.getWidth() - n - n2;
        }
        n2 = bl ? this.getPaddingRight() : this.getPaddingLeft();
        int n3 = bl ? layoutParams.rightMargin : layoutParams.leftMargin;
        this.mSlideOffset = (float)(n - (n2 + n3)) / (float)this.mSlideRange;
        if (this.mParallaxBy != 0) {
            this.parallaxOtherViews(this.mSlideOffset);
        }
        if (layoutParams.dimWhenOffset) {
            this.dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        this.dispatchOnPanelSlide(this.mSlideableView);
    }

    private boolean openPane(View view, int n) {
        if (this.mFirstLayout || this.smoothSlideTo(1.0f, n)) {
            this.mPreservedOpenState = true;
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void parallaxOtherViews(float var1_1) {
        var8_2 = this.isLayoutRtlSupport();
        var9_3 = (LayoutParams)this.mSlideableView.getLayoutParams();
        if (!var9_3.dimWhenOffset) ** GOTO lbl-1000
        var3_4 = var8_2 != false ? var9_3.rightMargin : var9_3.leftMargin;
        if (var3_4 <= 0) {
            var3_4 = 1;
        } else lbl-1000: // 2 sources:
        {
            var3_4 = 0;
        }
        var7_5 = this.getChildCount();
        for (var4_6 = 0; var4_6 < var7_5; ++var4_6) {
            var9_3 = this.getChildAt(var4_6);
            if (var9_3 == this.mSlideableView) continue;
            var5_8 = (int)((1.0f - this.mParallaxOffset) * (float)this.mParallaxBy);
            this.mParallaxOffset = var1_1;
            var5_8 = var6_9 = var5_8 - (int)((1.0f - var1_1) * (float)this.mParallaxBy);
            if (var8_2) {
                var5_8 = - var6_9;
            }
            var9_3.offsetLeftAndRight(var5_8);
            if (var3_4 == 0) continue;
            var2_7 = var8_2 != false ? this.mParallaxOffset - 1.0f : 1.0f - this.mParallaxOffset;
            this.dimChildView((View)var9_3, var2_7, this.mCoveredFadeColor);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean viewIsOpaque(View object) {
        if (ViewCompat.isOpaque((View)object)) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            return false;
        }
        if ((object = object.getBackground()) == null) return false;
        if (object.getOpacity() == -1) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean canScroll(View view, boolean bl, int n, int n2, int n3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup)view;
            int n4 = view.getScrollX();
            int n5 = view.getScrollY();
            for (int i = viewGroup.getChildCount() - 1; i >= 0; --i) {
                View view2 = viewGroup.getChildAt(i);
                if (n2 + n4 < view2.getLeft() || n2 + n4 >= view2.getRight() || n3 + n5 < view2.getTop() || n3 + n5 >= view2.getBottom() || !this.canScroll(view2, true, n, n2 + n4 - view2.getLeft(), n3 + n5 - view2.getTop())) continue;
                return true;
            }
        }
        if (bl) {
            if (!this.isLayoutRtlSupport()) {
                n = - n;
            }
            if (ViewCompat.canScrollHorizontally(view, n)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    public boolean closePane() {
        return this.closePane(this.mSlideableView, 0);
    }

    @Override
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (!this.mCanSlide) {
                this.mDragHelper.abort();
            }
        } else {
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    void dispatchOnPanelClosed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        this.sendAccessibilityEvent(32);
    }

    void dispatchOnPanelOpened(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        this.sendAccessibilityEvent(32);
    }

    void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void draw(Canvas canvas) {
        int n;
        int n2;
        super.draw(canvas);
        Drawable drawable = this.isLayoutRtlSupport() ? this.mShadowDrawableRight : this.mShadowDrawableLeft;
        if (this.getChildCount() <= 1) {
            return;
        }
        View view = this.getChildAt(1);
        if (view == null || drawable == null) {
            return;
        }
        int n3 = view.getTop();
        int n4 = view.getBottom();
        int n5 = drawable.getIntrinsicWidth();
        if (this.isLayoutRtlSupport()) {
            n = view.getRight();
            n2 = n + n5;
        } else {
            n2 = view.getLeft();
            n = n2 - n5;
        }
        drawable.setBounds(n, n3, n2, n4);
        drawable.draw(canvas);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected boolean drawChild(Canvas canvas, View view, long l) {
        boolean bl;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n = canvas.save(2);
        if (this.mCanSlide && !layoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            if (this.isLayoutRtlSupport()) {
                this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
            } else {
                this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            bl = super.drawChild(canvas, view, l);
        } else if (layoutParams.dimWhenOffset && this.mSlideOffset > 0.0f) {
            Bitmap bitmap;
            if (!view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(true);
            }
            if ((bitmap = view.getDrawingCache()) != null) {
                canvas.drawBitmap(bitmap, view.getLeft(), view.getTop(), layoutParams.dimPaint);
                bl = false;
            } else {
                Log.e("SlidingPaneLayout", "drawChild: child view " + view + " returned null drawing cache");
                bl = super.drawChild(canvas, view, l);
            }
        } else {
            if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
            bl = super.drawChild(canvas, view, l);
        }
        canvas.restoreToCount(n);
        return bl;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    boolean isDimmed(View object) {
        if (object == null) {
            return false;
        }
        object = (LayoutParams)object.getLayoutParams();
        if (!this.mCanSlide) return false;
        if (!object.dimWhenOffset) return false;
        if (this.mSlideOffset <= 0.0f) return false;
        return true;
    }

    public boolean isOpen() {
        if (!(this.mCanSlide && this.mSlideOffset != 1.0f)) {
            return true;
        }
        return false;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int n = this.mPostedRunnables.size();
        for (int i = 0; i < n; ++i) {
            this.mPostedRunnables.get(i).run();
        }
        this.mPostedRunnables.clear();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1_1) {
        var6_2 = MotionEventCompat.getActionMasked(var1_1);
        if (!(this.mCanSlide || var6_2 != 0 || this.getChildCount() <= 1 || (var8_3 = this.getChildAt(1)) == null)) {
            var7_4 = this.mDragHelper.isViewUnder(var8_3, (int)var1_1.getX(), (int)var1_1.getY()) == false;
            this.mPreservedOpenState = var7_4;
        }
        if (!this.mCanSlide || this.mIsUnableToDrag && var6_2 != 0) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(var1_1);
        }
        if (var6_2 == 3 || var6_2 == 1) {
            this.mDragHelper.cancel();
            return false;
        }
        var4_6 = var5_5 = false;
        switch (var6_2) {
            default: {
                var4_6 = var5_5;
                break;
            }
            case 0: {
                this.mIsUnableToDrag = false;
                var2_7 = var1_1.getX();
                var3_9 = var1_1.getY();
                this.mInitialMotionX = var2_7;
                this.mInitialMotionY = var3_9;
                var4_6 = var5_5;
                if (this.mDragHelper.isViewUnder(this.mSlideableView, (int)var2_7, (int)var3_9)) {
                    var4_6 = var5_5;
                    if (this.isDimmed(this.mSlideableView)) {
                        var4_6 = true;
                        break;
                    } else {
                        ** GOTO lbl40
                    }
                } else {
                    ** GOTO lbl40
                }
            }
            case 2: {
                var3_10 = var1_1.getX();
                var2_8 = var1_1.getY();
                var3_10 = Math.abs(var3_10 - this.mInitialMotionX);
                var2_8 = Math.abs(var2_8 - this.mInitialMotionY);
                var4_6 = var5_5;
                if (var3_10 > (float)this.mDragHelper.getTouchSlop()) {
                    var4_6 = var5_5;
                    if (var2_8 > var3_10) {
                        this.mDragHelper.cancel();
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                }
            }
lbl40: // 9 sources:
            case 1: 
        }
        if (this.mDragHelper.shouldInterceptTouchEvent(var1_1) != false) return true;
        if (var4_6 == false) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        boolean bl2 = this.isLayoutRtlSupport();
        if (bl2) {
            this.mDragHelper.setEdgeTrackingEnabled(2);
        } else {
            this.mDragHelper.setEdgeTrackingEnabled(1);
        }
        int n5 = n3 - n;
        n = bl2 ? this.getPaddingRight() : this.getPaddingLeft();
        n3 = bl2 ? this.getPaddingLeft() : this.getPaddingRight();
        int n6 = this.getPaddingTop();
        int n7 = this.getChildCount();
        n4 = n;
        if (this.mFirstLayout) {
            float f = this.mCanSlide && this.mPreservedOpenState ? 1.0f : 0.0f;
            this.mSlideOffset = f;
        }
        int n8 = 0;
        n2 = n;
        n = n4;
        for (n4 = n8; n4 < n7; ++n4) {
            View view = this.getChildAt(n4);
            if (view.getVisibility() == 8) continue;
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            int n9 = view.getMeasuredWidth();
            int n10 = 0;
            if (layoutParams.slideable) {
                n8 = layoutParams.leftMargin;
                int n11 = layoutParams.rightMargin;
                this.mSlideRange = n11 = Math.min(n, n5 - n3 - this.mOverhangSize) - n2 - (n8 + n11);
                n8 = bl2 ? layoutParams.rightMargin : layoutParams.leftMargin;
                bl = n2 + n8 + n11 + n9 / 2 > n5 - n3;
                layoutParams.dimWhenOffset = bl;
                n11 = (int)((float)n11 * this.mSlideOffset);
                n2+=n11 + n8;
                this.mSlideOffset = (float)n11 / (float)this.mSlideRange;
                n8 = n10;
            } else if (this.mCanSlide && this.mParallaxBy != 0) {
                n8 = (int)((1.0f - this.mSlideOffset) * (float)this.mParallaxBy);
                n2 = n;
            } else {
                n2 = n;
                n8 = n10;
            }
            if (bl2) {
                n10 = n5 - n2 + n8;
                n8 = n10 - n9;
            } else {
                n8 = n2 - n8;
                n10 = n8 + n9;
            }
            view.layout(n8, n6, n10, n6 + view.getMeasuredHeight());
            n+=view.getWidth();
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    this.parallaxOtherViews(this.mSlideOffset);
                }
                if (((LayoutParams)this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    this.dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            } else {
                for (n = 0; n < n7; ++n) {
                    this.dimChildView(this.getChildAt(n), 0.0f, this.mSliderFadeColor);
                }
            }
            this.updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    /*
     * Exception decompiling
     */
    @Override
    protected void onMeasure(int var1_1, int var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        if (parcelable.isOpen) {
            this.openPane();
        } else {
            this.closePane();
        }
        this.mPreservedOpenState = parcelable.isOpen;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean bl = this.isSlideable() ? this.isOpen() : this.mPreservedOpenState;
        savedState.isOpen = bl;
        return savedState;
    }

    @Override
    protected void onSizeChanged(int n, int n2, int n3, int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != n3) {
            this.mFirstLayout = true;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        int n = motionEvent.getAction();
        boolean bl = true;
        switch (n & 255) {
            default: {
                return true;
            }
            case 0: {
                float f = motionEvent.getX();
                float f2 = motionEvent.getY();
                this.mInitialMotionX = f;
                this.mInitialMotionY = f2;
                return true;
            }
            case 1: 
        }
        boolean bl2 = bl;
        if (!this.isDimmed(this.mSlideableView)) return bl2;
        float f = motionEvent.getX();
        float f3 = motionEvent.getY();
        float f4 = f - this.mInitialMotionX;
        float f5 = f3 - this.mInitialMotionY;
        n = this.mDragHelper.getTouchSlop();
        bl2 = bl;
        if (f4 * f4 + f5 * f5 >= (float)(n * n)) return bl2;
        bl2 = bl;
        if (!this.mDragHelper.isViewUnder(this.mSlideableView, (int)f, (int)f3)) return bl2;
        this.closePane(this.mSlideableView, 0);
        return true;
    }

    public boolean openPane() {
        return this.openPane(this.mSlideableView, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!(this.isInTouchMode() || this.mCanSlide)) {
            boolean bl = view == this.mSlideableView;
            this.mPreservedOpenState = bl;
        }
    }

    void setAllChildrenVisible() {
        int n = this.getChildCount();
        for (int i = 0; i < n; ++i) {
            View view = this.getChildAt(i);
            if (view.getVisibility() != 4) continue;
            view.setVisibility(0);
        }
    }

    public void setCoveredFadeColor(int n) {
        this.mCoveredFadeColor = n;
    }

    public void setPanelSlideListener(PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    public void setParallaxDistance(int n) {
        this.mParallaxBy = n;
        this.requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        this.setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.mShadowDrawableLeft = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.mShadowDrawableRight = drawable;
    }

    @Deprecated
    public void setShadowResource(int n) {
        this.setShadowDrawable(this.getResources().getDrawable(n));
    }

    public void setShadowResourceLeft(int n) {
        this.setShadowDrawableLeft(this.getResources().getDrawable(n));
    }

    public void setShadowResourceRight(int n) {
        this.setShadowDrawableRight(this.getResources().getDrawable(n));
    }

    public void setSliderFadeColor(int n) {
        this.mSliderFadeColor = n;
    }

    @Deprecated
    public void smoothSlideClosed() {
        this.closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        this.openPane();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    boolean smoothSlideTo(float f, int n) {
        if (!this.mCanSlide) {
            return false;
        }
        boolean bl = this.isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams)this.mSlideableView.getLayoutParams();
        if (bl) {
            n = this.getPaddingRight();
            int n2 = layoutParams.rightMargin;
            int n3 = this.mSlideableView.getWidth();
            n = (int)((float)this.getWidth() - ((float)(n + n2) + (float)this.mSlideRange * f + (float)n3));
        } else {
            n = (int)((float)(this.getPaddingLeft() + layoutParams.leftMargin) + (float)this.mSlideRange * f);
        }
        if (!this.mDragHelper.smoothSlideViewTo(this.mSlideableView, n, this.mSlideableView.getTop())) return false;
        this.setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateObscuredViewsVisibility(View view) {
        int n;
        int n2;
        int n3;
        int n4;
        boolean bl = this.isLayoutRtlSupport();
        int n5 = bl ? this.getWidth() - this.getPaddingRight() : this.getPaddingLeft();
        int n6 = bl ? this.getPaddingLeft() : this.getWidth() - this.getPaddingRight();
        int n7 = this.getPaddingTop();
        int n8 = this.getHeight();
        int n9 = this.getPaddingBottom();
        if (view != null && SlidingPaneLayout.viewIsOpaque(view)) {
            n2 = view.getLeft();
            n = view.getRight();
            n4 = view.getTop();
            n3 = view.getBottom();
        } else {
            n3 = 0;
            n4 = 0;
            n = 0;
            n2 = 0;
        }
        int n10 = 0;
        int n11 = this.getChildCount();
        View view2;
        while (n10 < n11 && (view2 = this.getChildAt(n10)) != view) {
            int n12 = bl ? n6 : n5;
            int n13 = Math.max(n12, view2.getLeft());
            int n14 = Math.max(n7, view2.getTop());
            n12 = bl ? n5 : n6;
            n12 = Math.min(n12, view2.getRight());
            int n15 = Math.min(n8 - n9, view2.getBottom());
            n12 = n13 >= n2 && n14 >= n4 && n12 <= n && n15 <= n3 ? 4 : 0;
            view2.setVisibility(n12);
            ++n10;
        }
        return;
    }

    class AccessibilityDelegate
    extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;

        AccessibilityDelegate() {
            this.mTmpRect = new Rect();
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)SlidingPaneLayout.class.getName());
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View object, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo((View)object, accessibilityNodeInfoCompat2);
            this.copyNodeInfoNoChildren(accessibilityNodeInfoCompat, accessibilityNodeInfoCompat2);
            accessibilityNodeInfoCompat2.recycle();
            accessibilityNodeInfoCompat.setClassName((CharSequence)SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource((View)object);
            object = ViewCompat.getParentForAccessibility((View)object);
            if (object instanceof View) {
                accessibilityNodeInfoCompat.setParent((View)object);
            }
            int n = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < n; ++i) {
                object = SlidingPaneLayout.this.getChildAt(i);
                if (this.filter((View)object) || object.getVisibility() != 0) continue;
                ViewCompat.setImportantForAccessibility((View)object, 1);
                accessibilityNodeInfoCompat.addChild((View)object);
            }
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!this.filter(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    private class DisableLayerRunnable
    implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        @Override
        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                ViewCompat.setLayerType(this.mChildView, 0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    private class DragHelperCallback
    extends ViewDragHelper.Callback {
        private DragHelperCallback() {
        }

        @Override
        public int clampViewPositionHorizontal(View object, int n, int n2) {
            object = (LayoutParams)SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                n2 = SlidingPaneLayout.this.getWidth() - (SlidingPaneLayout.this.getPaddingRight() + object.rightMargin + SlidingPaneLayout.this.mSlideableView.getWidth());
                int n3 = SlidingPaneLayout.this.mSlideRange;
                return Math.max(Math.min(n, n2), n2 - n3);
            }
            n2 = SlidingPaneLayout.this.getPaddingLeft() + object.leftMargin;
            int n4 = SlidingPaneLayout.this.mSlideRange;
            return Math.min(Math.max(n, n2), n2 + n4);
        }

        @Override
        public int clampViewPositionVertical(View view, int n, int n2) {
            return view.getTop();
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        @Override
        public void onEdgeDragStarted(int n, int n2) {
            SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, n2);
        }

        @Override
        public void onViewCaptured(View view, int n) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        @Override
        public void onViewDragStateChanged(int n) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() == 0) {
                if (SlidingPaneLayout.this.mSlideOffset == 0.0f) {
                    SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
                    SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
                    SlidingPaneLayout.this.mPreservedOpenState = false;
                }
            } else {
                return;
            }
            SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
            SlidingPaneLayout.this.mPreservedOpenState = true;
        }

        @Override
        public void onViewPositionChanged(View view, int n, int n2, int n3, int n4) {
            SlidingPaneLayout.this.onPanelDragged(n);
            SlidingPaneLayout.this.invalidate();
        }

        /*
         * Exception decompiling
         */
        @Override
        public void onViewReleased(View var1_1, float var2_2, float var3_3) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Statement already marked as first in another block
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.markFirstStatementInBlock(Op03SimpleStatement.java:411)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.markWholeBlock(Misc.java:217)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.considerAsSimpleIf(ConditionalRewriter.java:615)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.identifyNonjumpingConditionals(ConditionalRewriter.java:45)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:658)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }

        @Override
        public boolean tryCaptureView(View view, int n) {
            if (SlidingPaneLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams)view.getLayoutParams()).slideable;
        }
    }

    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        private static final int[] ATTRS = new int[]{16843137};
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(int n, int n2) {
            super(n, n2);
        }

        public LayoutParams(Context object, AttributeSet attributeSet) {
            super((Context)object, attributeSet);
            object = object.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = object.getFloat(0, 0.0f);
            object.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = layoutParams.weight;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public static interface PanelSlideListener {
        public void onPanelClosed(View var1);

        public void onPanelOpened(View var1);

        public void onPanelSlide(View var1, float var2);
    }

    static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>(){

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int n) {
                return new SavedState[n];
            }
        };
        boolean isOpen;

        /*
         * Enabled aggressive block sorting
         */
        private SavedState(Parcel parcel) {
            super(parcel);
            boolean bl = parcel.readInt() != 0;
            this.isOpen = bl;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void writeToParcel(Parcel parcel, int n) {
            super.writeToParcel(parcel, n);
            n = this.isOpen ? 1 : 0;
            parcel.writeInt(n);
        }

    }

    public static class SimplePanelSlideListener
    implements PanelSlideListener {
        @Override
        public void onPanelClosed(View view) {
        }

        @Override
        public void onPanelOpened(View view) {
        }

        @Override
        public void onPanelSlide(View view, float f) {
        }
    }

    static interface SlidingPanelLayoutImpl {
        public void invalidateChildRegion(SlidingPaneLayout var1, View var2);
    }

    static class SlidingPanelLayoutImplBase
    implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase() {
        }

        @Override
        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.postInvalidateOnAnimation(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    static class SlidingPanelLayoutImplJB
    extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        SlidingPanelLayoutImplJB() {
            try {
                this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", null);
            }
            catch (NoSuchMethodException var1_1) {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", var1_1);
            }
            try {
                this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                this.mRecreateDisplayList.setAccessible(true);
                return;
            }
            catch (NoSuchFieldException var1_2) {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", var1_2);
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.mGetDisplayList != null && this.mRecreateDisplayList != null) {
                try {
                    this.mRecreateDisplayList.setBoolean(view, true);
                    this.mGetDisplayList.invoke(view, null);
                }
                catch (Exception var3_3) {
                    Log.e("SlidingPaneLayout", "Error refreshing display list state", var3_3);
                }
                super.invalidateChildRegion(slidingPaneLayout, view);
                return;
            }
            view.invalidate();
        }
    }

    static class SlidingPanelLayoutImplJBMR1
    extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1() {
        }

        @Override
        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.setLayerPaint(view, ((LayoutParams)view.getLayoutParams()).dimPaint);
        }
    }

}

