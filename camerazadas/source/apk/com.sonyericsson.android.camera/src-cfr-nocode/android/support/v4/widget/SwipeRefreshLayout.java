/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v4.widget.SwipeProgressBar;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SwipeRefreshLayout
extends ViewGroup {
    private static final float ACCELERATE_INTERPOLATION_FACTOR = 1.5f;
    private static final float DECELERATE_INTERPOLATION_FACTOR = 2.0f;
    private static final int INVALID_POINTER = -1;
    private static final int[] LAYOUT_ATTRS;
    private static final String LOG_TAG;
    private static final float MAX_SWIPE_DISTANCE_FACTOR = 0.6f;
    private static final float PROGRESS_BAR_HEIGHT = 4.0f;
    private static final int REFRESH_TRIGGER_DISTANCE = 120;
    private static final long RETURN_TO_ORIGINAL_POSITION_TIMEOUT = 300;
    private final AccelerateInterpolator mAccelerateInterpolator;
    private int mActivePointerId;
    private final Animation mAnimateToStartPosition;
    private final Runnable mCancel;
    private float mCurrPercentage;
    private int mCurrentTargetOffsetTop;
    private final DecelerateInterpolator mDecelerateInterpolator;
    private float mDistanceToTriggerSync;
    private int mFrom;
    private float mFromPercentage;
    private float mInitialMotionY;
    private boolean mIsBeingDragged;
    private float mLastMotionY;
    private OnRefreshListener mListener;
    private int mMediumAnimationDuration;
    private int mOriginalOffsetTop;
    private SwipeProgressBar mProgressBar;
    private int mProgressBarHeight;
    private boolean mRefreshing;
    private final Runnable mReturnToStartPosition;
    private final Animation.AnimationListener mReturnToStartPositionListener;
    private boolean mReturningToStart;
    private final Animation.AnimationListener mShrinkAnimationListener;
    private Animation mShrinkTrigger;
    private View mTarget;
    private int mTouchSlop;

    static;

    public SwipeRefreshLayout(Context var1);

    public SwipeRefreshLayout(Context var1, AttributeSet var2);

    static /* synthetic */ int access$000(SwipeRefreshLayout var0);

    static /* synthetic */ int access$100(SwipeRefreshLayout var0);

    static /* synthetic */ Animation.AnimationListener access$1000(SwipeRefreshLayout var0);

    static /* synthetic */ void access$1100(SwipeRefreshLayout var0, int var1, Animation.AnimationListener var2);

    static /* synthetic */ int access$1200(SwipeRefreshLayout var0);

    static /* synthetic */ Animation access$1300(SwipeRefreshLayout var0);

    static /* synthetic */ Animation.AnimationListener access$1400(SwipeRefreshLayout var0);

    static /* synthetic */ DecelerateInterpolator access$1500(SwipeRefreshLayout var0);

    static /* synthetic */ View access$200(SwipeRefreshLayout var0);

    static /* synthetic */ void access$300(SwipeRefreshLayout var0, int var1);

    static /* synthetic */ float access$400(SwipeRefreshLayout var0);

    static /* synthetic */ float access$402(SwipeRefreshLayout var0, float var1);

    static /* synthetic */ SwipeProgressBar access$500(SwipeRefreshLayout var0);

    static /* synthetic */ int access$700(SwipeRefreshLayout var0);

    static /* synthetic */ int access$702(SwipeRefreshLayout var0, int var1);

    static /* synthetic */ float access$800(SwipeRefreshLayout var0);

    static /* synthetic */ float access$802(SwipeRefreshLayout var0, float var1);

    static /* synthetic */ boolean access$902(SwipeRefreshLayout var0, boolean var1);

    private void animateOffsetToStartPosition(int var1, Animation.AnimationListener var2);

    private void ensureTarget();

    private void onSecondaryPointerUp(MotionEvent var1);

    private void setTargetOffsetTopAndBottom(int var1);

    private void setTriggerPercentage(float var1);

    private void startRefresh();

    private void updateContentOffsetTop(int var1);

    private void updatePositionTimeout();

    public boolean canChildScrollUp();

    @Override
    public void draw(Canvas var1);

    public boolean isRefreshing();

    @Override
    public void onAttachedToWindow();

    @Override
    public void onDetachedFromWindow();

    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    public void onMeasure(int var1, int var2);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    @Override
    public void requestDisallowInterceptTouchEvent(boolean var1);

    @Deprecated
    public void setColorScheme(int var1, int var2, int var3, int var4);

    public void setColorSchemeColors(int var1, int var2, int var3, int var4);

    public void setColorSchemeResources(int var1, int var2, int var3, int var4);

    public void setOnRefreshListener(OnRefreshListener var1);

    public void setRefreshing(boolean var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class BaseAnimationListener
    implements Animation.AnimationListener {
        final /* synthetic */ SwipeRefreshLayout this$0;

        private BaseAnimationListener(SwipeRefreshLayout var1);

        /* synthetic */ BaseAnimationListener(SwipeRefreshLayout var1,  var2);

        @Override
        public void onAnimationEnd(Animation var1);

        @Override
        public void onAnimationRepeat(Animation var1);

        @Override
        public void onAnimationStart(Animation var1);
    }

    public static interface OnRefreshListener {
        public void onRefresh();
    }

}

