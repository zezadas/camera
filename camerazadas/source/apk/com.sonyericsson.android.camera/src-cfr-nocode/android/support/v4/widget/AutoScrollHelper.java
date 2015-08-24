/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class AutoScrollHelper
implements View.OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY;
    private static final int DEFAULT_EDGE_TYPE = 1;
    private static final float DEFAULT_MAXIMUM_EDGE = 3.4028235E38f;
    private static final int DEFAULT_MAXIMUM_VELOCITY_DIPS = 1575;
    private static final int DEFAULT_MINIMUM_VELOCITY_DIPS = 315;
    private static final int DEFAULT_RAMP_DOWN_DURATION = 500;
    private static final int DEFAULT_RAMP_UP_DURATION = 500;
    private static final float DEFAULT_RELATIVE_EDGE = 0.2f;
    private static final float DEFAULT_RELATIVE_VELOCITY = 1.0f;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    private static final int HORIZONTAL = 0;
    public static final float NO_MAX = 3.4028235E38f;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    private static final int VERTICAL = 1;
    private int mActivationDelay;
    private boolean mAlreadyDelayed;
    private boolean mAnimating;
    private final Interpolator mEdgeInterpolator;
    private int mEdgeType;
    private boolean mEnabled;
    private boolean mExclusive;
    private float[] mMaximumEdges;
    private float[] mMaximumVelocity;
    private float[] mMinimumVelocity;
    private boolean mNeedsCancel;
    private boolean mNeedsReset;
    private float[] mRelativeEdges;
    private float[] mRelativeVelocity;
    private Runnable mRunnable;
    private final ClampedScroller mScroller;
    private final View mTarget;

    static;

    public AutoScrollHelper(View var1);

    static /* synthetic */ boolean access$100(AutoScrollHelper var0);

    static /* synthetic */ boolean access$102(AutoScrollHelper var0, boolean var1);

    static /* synthetic */ boolean access$200(AutoScrollHelper var0);

    static /* synthetic */ boolean access$202(AutoScrollHelper var0, boolean var1);

    static /* synthetic */ ClampedScroller access$300(AutoScrollHelper var0);

    static /* synthetic */ boolean access$400(AutoScrollHelper var0);

    static /* synthetic */ boolean access$500(AutoScrollHelper var0);

    static /* synthetic */ boolean access$502(AutoScrollHelper var0, boolean var1);

    static /* synthetic */ void access$600(AutoScrollHelper var0);

    static /* synthetic */ View access$700(AutoScrollHelper var0);

    static /* synthetic */ int access$800(int var0, int var1, int var2);

    static /* synthetic */ float access$900(float var0, float var1, float var2);

    private void cancelTargetTouch();

    private float computeTargetVelocity(int var1, float var2, float var3, float var4);

    private static float constrain(float var0, float var1, float var2);

    private static int constrain(int var0, int var1, int var2);

    private float constrainEdgeValue(float var1, float var2);

    private float getEdgeValue(float var1, float var2, float var3, float var4);

    private void requestStop();

    private boolean shouldAnimate();

    private void startAnimating();

    public abstract boolean canTargetScrollHorizontally(int var1);

    public abstract boolean canTargetScrollVertically(int var1);

    public boolean isEnabled();

    public boolean isExclusive();

    @Override
    public boolean onTouch(View var1, MotionEvent var2);

    public abstract void scrollTargetBy(int var1, int var2);

    public AutoScrollHelper setActivationDelay(int var1);

    public AutoScrollHelper setEdgeType(int var1);

    public AutoScrollHelper setEnabled(boolean var1);

    public AutoScrollHelper setExclusive(boolean var1);

    public AutoScrollHelper setMaximumEdges(float var1, float var2);

    public AutoScrollHelper setMaximumVelocity(float var1, float var2);

    public AutoScrollHelper setMinimumVelocity(float var1, float var2);

    public AutoScrollHelper setRampDownDuration(int var1);

    public AutoScrollHelper setRampUpDuration(int var1);

    public AutoScrollHelper setRelativeEdges(float var1, float var2);

    public AutoScrollHelper setRelativeVelocity(float var1, float var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ClampedScroller {
        private long mDeltaTime;
        private int mDeltaX;
        private int mDeltaY;
        private int mEffectiveRampDown;
        private int mRampDownDuration;
        private int mRampUpDuration;
        private long mStartTime;
        private long mStopTime;
        private float mStopValue;
        private float mTargetVelocityX;
        private float mTargetVelocityY;

        public ClampedScroller();

        private float getValueAt(long var1);

        private float interpolateValue(float var1);

        public void computeScrollDelta();

        public int getDeltaX();

        public int getDeltaY();

        public int getHorizontalDirection();

        public int getVerticalDirection();

        public boolean isFinished();

        public void requestStop();

        public void setRampDownDuration(int var1);

        public void setRampUpDuration(int var1);

        public void setTargetVelocity(float var1, float var2);

        public void start();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ScrollAnimationRunnable
    implements Runnable {
        final /* synthetic */ AutoScrollHelper this$0;

        private ScrollAnimationRunnable(AutoScrollHelper var1);

        /* synthetic */ ScrollAnimationRunnable(AutoScrollHelper var1,  var2);

        @Override
        public void run();
    }

}

