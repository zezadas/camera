/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

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

    public Rotate3dAnimation(float f, float f2, float f3, float f4) {
        this.mFromDegrees = f;
        this.mToDegrees = f2;
        this.mCenterX = f3;
        this.mCenterY = f4;
    }

    public static Rotate3dAnimation newRotateFirstHalfInstance(float f, float f2) {
        return new Rotate3dAnimation(0.0f, -90.0f, f, f2);
    }

    public static Rotate3dAnimation newRotateLastHalfInstance(float f, float f2) {
        return new Rotate3dAnimation(90.0f, 0.0f, f, f2);
    }

    @Override
    protected void applyTransformation(float f, Transformation object) {
        float f2 = this.mFromDegrees;
        float f3 = this.mToDegrees;
        float f4 = this.mCenterX;
        float f5 = this.mCenterY;
        Camera camera = this.mCamera;
        object = object.getMatrix();
        camera.save();
        camera.rotateY(f2 + (f3 - f2) * f);
        camera.getMatrix((Matrix)object);
        camera.restore();
        object.preTranslate(- f4, - f5);
        object.postTranslate(f4, f5);
    }

    @Override
    public void initialize(int n, int n2, int n3, int n4) {
        super.initialize(n, n2, n3, n4);
        this.mCamera = new Camera();
    }
}

