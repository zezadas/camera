/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.view.animation.Interpolator;

/*
 * Exception performing whole class analysis.
 */
public abstract class TransitionHelper {
    private float mDurationMills;
    private final Interpolator mInterpolator;
    private boolean mIsActive;
    private long mStartTime;

    public TransitionHelper(long var1, Interpolator var3);

    public void abort();

    protected abstract void apply(float var1);

    public void changeDuration(float var1);

    protected float getCurrentInterpolation();

    protected float getLinearInterpolation(float var1, float var2, float var3);

    protected int getLinearInterpolation(int var1, int var2, float var3);

    public boolean isActive();

    protected abstract void onFinish();

    public void start();

    public void update();
}

