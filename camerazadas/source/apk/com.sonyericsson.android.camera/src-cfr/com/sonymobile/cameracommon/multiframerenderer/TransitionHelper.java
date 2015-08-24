/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.view.animation.Interpolator;

public abstract class TransitionHelper {
    private float mDurationMills;
    private final Interpolator mInterpolator;
    private boolean mIsActive = false;
    private long mStartTime = 0;

    public TransitionHelper(long l, Interpolator interpolator) {
        this.mDurationMills = l;
        this.mInterpolator = interpolator;
    }

    public void abort() {
        this.mStartTime = 0;
        this.update();
    }

    protected abstract void apply(float var1);

    public void changeDuration(float f) {
        this.mDurationMills = f;
    }

    protected float getCurrentInterpolation() {
        float f;
        float f2 = f = (float)(System.currentTimeMillis() - this.mStartTime) / this.mDurationMills;
        if (f > 1.0f) {
            f2 = 1.0f;
        }
        return this.mInterpolator.getInterpolation(f2);
    }

    protected float getLinearInterpolation(float f, float f2, float f3) {
        return (f2 - f) * f3 + f;
    }

    protected int getLinearInterpolation(int n, int n2, float f) {
        return (int)((float)(n2 - n) * f + (float)n);
    }

    public boolean isActive() {
        return this.mIsActive;
    }

    protected abstract void onFinish();

    public void start() {
        this.mStartTime = System.currentTimeMillis();
        this.mIsActive = true;
        this.update();
    }

    public void update() {
        if (this.mIsActive) {
            boolean bl = false;
            if ((float)(System.currentTimeMillis() - this.mStartTime) >= this.mDurationMills) {
                bl = true;
            }
            this.apply(this.getCurrentInterpolation());
            if (bl) {
                this.mIsActive = false;
                this.onFinish();
            }
        }
    }
}

