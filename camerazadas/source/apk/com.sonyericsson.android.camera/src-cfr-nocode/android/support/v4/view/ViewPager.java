/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Comparator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ViewPager
extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final Comparator<ItemInfo> COMPARATOR;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int[] LAYOUT_ATTRS;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private static final Interpolator sInterpolator;
    private static final ViewPositionComparator sPositionComparator;
    private int mActivePointerId;
    private PagerAdapter mAdapter;
    private OnAdapterChangeListener mAdapterChangeListener;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mIgnoreGutter;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private final ArrayList<ItemInfo> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private OnPageChangeListener mOnPageChangeListener;
    private int mPageMargin;
    private PageTransformer mPageTransformer;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private final ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    static;

    public ViewPager(Context var1);

    public ViewPager(Context var1, AttributeSet var2);

    static /* synthetic */ void access$000(ViewPager var0, int var1);

    static /* synthetic */ PagerAdapter access$200(ViewPager var0);

    static /* synthetic */ int access$300(ViewPager var0);

    static /* synthetic */ int[] access$400();

    private void calculatePageOffsets(ItemInfo var1, int var2, ItemInfo var3);

    private void completeScroll(boolean var1);

    private int determineTargetPage(int var1, float var2, int var3, int var4);

    private void enableLayers(boolean var1);

    private void endDrag();

    private Rect getChildRectInPagerCoordinates(Rect var1, View var2);

    private int getClientWidth();

    private ItemInfo infoForCurrentScrollPosition();

    private boolean isGutterDrag(float var1, float var2);

    private void onSecondaryPointerUp(MotionEvent var1);

    private boolean pageScrolled(int var1);

    private boolean performDrag(float var1);

    private void recomputeScrollPosition(int var1, int var2, int var3, int var4);

    private void removeNonDecorViews();

    private void requestParentDisallowInterceptTouchEvent(boolean var1);

    private void scrollToItem(int var1, boolean var2, int var3, boolean var4);

    private void setScrollState(int var1);

    private void setScrollingCacheEnabled(boolean var1);

    private void sortChildDrawingOrder();

    @Override
    public void addFocusables(ArrayList<View> var1, int var2, int var3);

    ItemInfo addNewItem(int var1, int var2);

    @Override
    public void addTouchables(ArrayList<View> var1);

    @Override
    public void addView(View var1, int var2, ViewGroup.LayoutParams var3);

    public boolean arrowScroll(int var1);

    public boolean beginFakeDrag();

    protected boolean canScroll(View var1, boolean var2, int var3, int var4, int var5);

    @Override
    public boolean canScrollHorizontally(int var1);

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams var1);

    @Override
    public void computeScroll();

    void dataSetChanged();

    @Override
    public boolean dispatchKeyEvent(KeyEvent var1);

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent var1);

    float distanceInfluenceForSnapDuration(float var1);

    @Override
    public void draw(Canvas var1);

    @Override
    protected void drawableStateChanged();

    public void endFakeDrag();

    public boolean executeKeyEvent(KeyEvent var1);

    public void fakeDragBy(float var1);

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams();

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet var1);

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams var1);

    public PagerAdapter getAdapter();

    @Override
    protected int getChildDrawingOrder(int var1, int var2);

    public int getCurrentItem();

    public int getOffscreenPageLimit();

    public int getPageMargin();

    ItemInfo infoForAnyChild(View var1);

    ItemInfo infoForChild(View var1);

    ItemInfo infoForPosition(int var1);

    void initViewPager();

    public boolean isFakeDragging();

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    protected void onDraw(Canvas var1);

    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    protected void onPageScrolled(int var1, float var2, int var3);

    @Override
    protected boolean onRequestFocusInDescendants(int var1, Rect var2);

    @Override
    public void onRestoreInstanceState(Parcelable var1);

    @Override
    public Parcelable onSaveInstanceState();

    @Override
    protected void onSizeChanged(int var1, int var2, int var3, int var4);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    boolean pageLeft();

    boolean pageRight();

    void populate();

    void populate(int var1);

    @Override
    public void removeView(View var1);

    public void setAdapter(PagerAdapter var1);

    void setChildrenDrawingOrderEnabledCompat(boolean var1);

    public void setCurrentItem(int var1);

    public void setCurrentItem(int var1, boolean var2);

    void setCurrentItemInternal(int var1, boolean var2, boolean var3);

    void setCurrentItemInternal(int var1, boolean var2, boolean var3, int var4);

    OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener var1);

    public void setOffscreenPageLimit(int var1);

    void setOnAdapterChangeListener(OnAdapterChangeListener var1);

    public void setOnPageChangeListener(OnPageChangeListener var1);

    public void setPageMargin(int var1);

    public void setPageMarginDrawable(int var1);

    public void setPageMarginDrawable(Drawable var1);

    public void setPageTransformer(boolean var1, PageTransformer var2);

    void smoothScrollTo(int var1, int var2);

    void smoothScrollTo(int var1, int var2, int var3);

    @Override
    protected boolean verifyDrawable(Drawable var1);

    static interface Decor {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class ItemInfo {
        Object object;
        float offset;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class LayoutParams
    extends ViewGroup.LayoutParams {
        int childIndex;
        public int gravity;
        public boolean isDecor;
        boolean needsMeasure;
        int position;
        float widthFactor;

        public LayoutParams();

        public LayoutParams(Context var1, AttributeSet var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class MyAccessibilityDelegate
    extends AccessibilityDelegateCompat {
        final /* synthetic */ ViewPager this$0;

        MyAccessibilityDelegate(ViewPager var1);

        private boolean canScroll();

        @Override
        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        @Override
        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        @Override
        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);
    }

    static interface OnAdapterChangeListener {
        public void onAdapterChanged(PagerAdapter var1, PagerAdapter var2);
    }

    public static interface OnPageChangeListener {
        public void onPageScrollStateChanged(int var1);

        public void onPageScrolled(int var1, float var2, int var3);

        public void onPageSelected(int var1);
    }

    public static interface PageTransformer {
        public void transformPage(View var1, float var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PagerObserver
    extends DataSetObserver {
        final /* synthetic */ ViewPager this$0;

        private PagerObserver(ViewPager var1);

        /* synthetic */ PagerObserver(ViewPager var1,  var2);

        @Override
        public void onChanged();

        @Override
        public void onInvalidated();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR;
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        static;

        SavedState(Parcel var1, ClassLoader var2);

        public SavedState(Parcelable var1);

        public String toString();

        @Override
        public void writeToParcel(Parcel var1, int var2);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class SimpleOnPageChangeListener
    implements OnPageChangeListener {
        public SimpleOnPageChangeListener();

        @Override
        public void onPageScrollStateChanged(int var1);

        @Override
        public void onPageScrolled(int var1, float var2, int var3);

        @Override
        public void onPageSelected(int var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewPositionComparator
    implements Comparator<View> {
        ViewPositionComparator();

        @Override
        public int compare(View var1, View var2);
    }

}

