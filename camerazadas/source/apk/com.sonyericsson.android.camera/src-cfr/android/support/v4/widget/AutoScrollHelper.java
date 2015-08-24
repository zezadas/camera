/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public abstract class AutoScrollHelper
implements View.OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
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
    private final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    private int mEdgeType;
    private boolean mEnabled;
    private boolean mExclusive;
    private float[] mMaximumEdges = new float[]{3.4028235E38f, 3.4028235E38f};
    private float[] mMaximumVelocity = new float[]{3.4028235E38f, 3.4028235E38f};
    private float[] mMinimumVelocity = new float[]{0.0f, 0.0f};
    private boolean mNeedsCancel;
    private boolean mNeedsReset;
    private float[] mRelativeEdges = new float[]{0.0f, 0.0f};
    private float[] mRelativeVelocity = new float[]{0.0f, 0.0f};
    private Runnable mRunnable;
    private final ClampedScroller mScroller = new ClampedScroller();
    private final View mTarget;

    public AutoScrollHelper(View object) {
        this.mTarget = object;
        object = Resources.getSystem().getDisplayMetrics();
        int n = (int)(1575.0f * object.density + 0.5f);
        int n2 = (int)(315.0f * object.density + 0.5f);
        this.setMaximumVelocity(n, n);
        this.setMinimumVelocity(n2, n2);
        this.setEdgeType(1);
        this.setMaximumEdges(3.4028235E38f, 3.4028235E38f);
        this.setRelativeEdges(0.2f, 0.2f);
        this.setRelativeVelocity(1.0f, 1.0f);
        this.setActivationDelay(DEFAULT_ACTIVATION_DELAY);
        this.setRampUpDuration(500);
        this.setRampDownDuration(500);
    }

    private void cancelTargetTouch() {
        long l = SystemClock.uptimeMillis();
        MotionEvent motionEvent = MotionEvent.obtain(l, l, 3, 0.0f, 0.0f, 0);
        this.mTarget.onTouchEvent(motionEvent);
        motionEvent.recycle();
    }

    private float computeTargetVelocity(int n, float f, float f2, float f3) {
        if ((f = this.getEdgeValue(this.mRelativeEdges[n], f2, this.mMaximumEdges[n], f)) == 0.0f) {
            return 0.0f;
        }
        float f4 = this.mRelativeVelocity[n];
        f2 = this.mMinimumVelocity[n];
        float f5 = this.mMaximumVelocity[n];
        f3 = f4 * f3;
        if (f > 0.0f) {
            return AutoScrollHelper.constrain(f * f3, f2, f5);
        }
        return - AutoScrollHelper.constrain((- f) * f3, f2, f5);
    }

    private static float constrain(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        if (f < f2) {
            return f2;
        }
        return f;
    }

    private static int constrain(int n, int n2, int n3) {
        if (n > n3) {
            return n3;
        }
        if (n < n2) {
            return n2;
        }
        return n;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private float constrainEdgeValue(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        switch (this.mEdgeType) {
            default: {
                return 0.0f;
            }
            case 0: 
            case 1: {
                if (f >= f2) return 0.0f;
                if (f >= 0.0f) {
                    return 1.0f - f / f2;
                }
                if (!this.mAnimating) return 0.0f;
                if (this.mEdgeType != 1) return 0.0f;
                return 1.0f;
            }
            case 2: 
        }
        if (f >= 0.0f) return 0.0f;
        return f / (- f2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private float getEdgeValue(float f, float f2, float f3, float f4) {
        float f5 = 0.0f;
        f = AutoScrollHelper.constrain(f * f2, 0.0f, f3);
        f3 = this.constrainEdgeValue(f4, f);
        if ((f2 = this.constrainEdgeValue(f2 - f4, f) - f3) < 0.0f) {
            f = - this.mEdgeInterpolator.getInterpolation(- f2);
            do {
                return AutoScrollHelper.constrain(f, -1.0f, 1.0f);
                break;
            } while (true);
        }
        f = f5;
        if (f2 <= 0.0f) return f;
        f = this.mEdgeInterpolator.getInterpolation(f2);
        return AutoScrollHelper.constrain(f, -1.0f, 1.0f);
    }

    private void requestStop() {
        if (this.mNeedsReset) {
            this.mAnimating = false;
            return;
        }
        this.mScroller.requestStop();
    }

    private boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        int n = clampedScroller.getVerticalDirection();
        int n2 = clampedScroller.getHorizontalDirection();
        if (n != 0 && this.canTargetScrollVertically(n) || n2 != 0 && this.canTargetScrollHorizontally(n2)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void startAnimating() {
        if (this.mRunnable == null) {
            this.mRunnable = new ScrollAnimationRunnable();
        }
        this.mAnimating = true;
        this.mNeedsReset = true;
        if (!(this.mAlreadyDelayed || this.mActivationDelay <= 0)) {
            ViewCompat.postOnAnimationDelayed(this.mTarget, this.mRunnable, this.mActivationDelay);
        } else {
            this.mRunnable.run();
        }
        this.mAlreadyDelayed = true;
    }

    public abstract boolean canTargetScrollHorizontally(int var1);

    public abstract boolean canTargetScrollVertically(int var1);

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public boolean isExclusive() {
        return this.mExclusive;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean bl = true;
        if (!this.mEnabled) {
            return false;
        }
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case 0: {
                this.mNeedsCancel = true;
                this.mAlreadyDelayed = false;
            }
            case 2: {
                float f = this.computeTargetVelocity(0, motionEvent.getX(), view.getWidth(), this.mTarget.getWidth());
                float f2 = this.computeTargetVelocity(1, motionEvent.getY(), view.getHeight(), this.mTarget.getHeight());
                this.mScroller.setTargetVelocity(f, f2);
                if (this.mAnimating || !this.shouldAnimate()) break;
                this.startAnimating();
                break;
            }
            case 1: 
            case 3: {
                this.requestStop();
            }
        }
        if (!this.mExclusive) return false;
        if (!this.mAnimating) return false;
        return bl;
    }

    public abstract void scrollTargetBy(int var1, int var2);

    public AutoScrollHelper setActivationDelay(int n) {
        this.mActivationDelay = n;
        return this;
    }

    public AutoScrollHelper setEdgeType(int n) {
        this.mEdgeType = n;
        return this;
    }

    public AutoScrollHelper setEnabled(boolean bl) {
        if (this.mEnabled && !bl) {
            this.requestStop();
        }
        this.mEnabled = bl;
        return this;
    }

    public AutoScrollHelper setExclusive(boolean bl) {
        this.mExclusive = bl;
        return this;
    }

    public AutoScrollHelper setMaximumEdges(float f, float f2) {
        this.mMaximumEdges[0] = f;
        this.mMaximumEdges[1] = f2;
        return this;
    }

    public AutoScrollHelper setMaximumVelocity(float f, float f2) {
        this.mMaximumVelocity[0] = f / 1000.0f;
        this.mMaximumVelocity[1] = f2 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setMinimumVelocity(float f, float f2) {
        this.mMinimumVelocity[0] = f / 1000.0f;
        this.mMinimumVelocity[1] = f2 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setRampDownDuration(int n) {
        this.mScroller.setRampDownDuration(n);
        return this;
    }

    public AutoScrollHelper setRampUpDuration(int n) {
        this.mScroller.setRampUpDuration(n);
        return this;
    }

    public AutoScrollHelper setRelativeEdges(float f, float f2) {
        this.mRelativeEdges[0] = f;
        this.mRelativeEdges[1] = f2;
        return this;
    }

    public AutoScrollHelper setRelativeVelocity(float f, float f2) {
        this.mRelativeVelocity[0] = f / 1000.0f;
        this.mRelativeVelocity[1] = f2 / 1000.0f;
        return this;
    }

    private static class ClampedScroller {
        private long mDeltaTime = 0;
        private int mDeltaX = 0;
        private int mDeltaY = 0;
        private int mEffectiveRampDown;
        private int mRampDownDuration;
        private int mRampUpDuration;
        private long mStartTime = Long.MIN_VALUE;
        private long mStopTime = -1;
        private float mStopValue;
        private float mTargetVelocityX;
        private float mTargetVelocityY;

        private float getValueAt(long l) {
            if (l < this.mStartTime) {
                return 0.0f;
            }
            if (this.mStopTime < 0 || l < this.mStopTime) {
                return AutoScrollHelper.constrain((float)(l - this.mStartTime) / (float)this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
            }
            long l2 = this.mStopTime;
            float f = this.mStopValue;
            float f2 = this.mStopValue;
            return AutoScrollHelper.constrain((float)(l - l2) / (float)this.mEffectiveRampDown, 0.0f, 1.0f) * f2 + (1.0f - f);
        }

        private float interpolateValue(float f) {
            return -4.0f * f * f + 4.0f * f;
        }

        public void computeScrollDelta() {
            if (this.mDeltaTime == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long l = AnimationUtils.currentAnimationTimeMillis();
            float f = this.interpolateValue(this.getValueAt(l));
            long l2 = l - this.mDeltaTime;
            this.mDeltaTime = l;
            this.mDeltaX = (int)((float)l2 * f * this.mTargetVelocityX);
            this.mDeltaY = (int)((float)l2 * f * this.mTargetVelocityY);
        }

        public int getDeltaX() {
            return this.mDeltaX;
        }

        public int getDeltaY() {
            return this.mDeltaY;
        }

        public int getHorizontalDirection() {
            return (int)(this.mTargetVelocityX / Math.abs(this.mTargetVelocityX));
        }

        public int getVerticalDirection() {
            return (int)(this.mTargetVelocityY / Math.abs(this.mTargetVelocityY));
        }

        public boolean isFinished() {
            if (this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + (long)this.mEffectiveRampDown) {
                return true;
            }
            return false;
        }

        public void requestStop() {
            long l = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.constrain((int)(l - this.mStartTime), 0, this.mRampDownDuration);
            this.mStopValue = this.getValueAt(l);
            this.mStopTime = l;
        }

        public void setRampDownDuration(int n) {
            this.mRampDownDuration = n;
        }

        public void setRampUpDuration(int n) {
            this.mRampUpDuration = n;
        }

        public void setTargetVelocity(float f, float f2) {
            this.mTargetVelocityX = f;
            this.mTargetVelocityY = f2;
        }

        public void start() {
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mStopTime = -1;
            this.mDeltaTime = this.mStartTime;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }
    }

    private class ScrollAnimationRunnable
    implements Runnable {
        private ScrollAnimationRunnable() {
        }

        @Override
        public void run() {
            ClampedScroller clampedScroller;
            if (!AutoScrollHelper.this.mAnimating) {
                return;
            }
            if (AutoScrollHelper.this.mNeedsReset) {
                AutoScrollHelper.this.mNeedsReset = false;
                AutoScrollHelper.this.mScroller.start();
            }
            if ((clampedScroller = AutoScrollHelper.this.mScroller).isFinished() || !AutoScrollHelper.this.shouldAnimate()) {
                AutoScrollHelper.this.mAnimating = false;
                return;
            }
            if (AutoScrollHelper.this.mNeedsCancel) {
                AutoScrollHelper.this.mNeedsCancel = false;
                AutoScrollHelper.this.cancelTargetTouch();
            }
            clampedScroller.computeScrollDelta();
            int n = clampedScroller.getDeltaX();
            int n2 = clampedScroller.getDeltaY();
            AutoScrollHelper.this.scrollTargetBy(n, n2);
            ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
        }
    }

}

