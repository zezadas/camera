/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Camera;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/*
 * Exception performing whole class analysis.
 */
public class Rotate3dAnimation
extends Animation {
    private static final int ROTATION_FIRSTHALF_END_DEGREE = -90;
    private static final int ROTATION_FIRSTHALF_START_DEGREE = 0;
    private static final int ROTATION_LASTHALF_END_DEGREE = 0;
    private static final int ROTATION_LASTHALF_START_DEGREE = 90;
    private Camera mCamera;
    private final float mCenterX;
    private final float mCenterY;
    private final float mFromDegrees;
    private final float mToDegrees;

    public Rotate3dAnimation(float var1, float var2, float var3, float var4);

    public static Rotate3dAnimation newRotateFirstHalfInstance(float var0, float var1);

    public static Rotate3dAnimation newRotateLastHalfInstance(float var0, float var1);

    @Override
    protected void applyTransformation(float var1, Transformation var2);

    @Override
    public void initialize(int var1, int var2, int var3, int var4);
}

