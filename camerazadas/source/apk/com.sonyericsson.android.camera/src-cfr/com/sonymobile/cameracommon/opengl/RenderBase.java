/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.Matrix;
import android.view.View;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;

public abstract class RenderBase {
    protected static final int FLOAT_SIZE_IN_BYTE = 4;
    private Context mContext = null;
    protected float[] mGlobalMatrix = new float[16];
    private boolean mIsVisible = true;
    protected View mRootView = null;
    protected float[] mSequencedLocalMatrix = new float[16];

    protected RenderBase(Context context, View view) {
        this.mContext = context;
        this.mRootView = view;
        Matrix.setIdentityM(this.mGlobalMatrix, 0);
        Matrix.setIdentityM(this.mSequencedLocalMatrix, 0);
    }

    protected Context getContext() {
        return this.mContext;
    }

    protected float getHeightNorm() {
        if (this.mRootView.getHeight() < this.mRootView.getWidth()) {
            return (float)this.mRootView.getHeight() / (float)this.mRootView.getWidth();
        }
        return 1.0f;
    }

    public float[] getLocalGlobalMatrix() {
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mSequencedLocalMatrix, 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mGlobalMatrix, 0, arrf, 0);
        return arrf;
    }

    protected float getWidthNorm() {
        if (this.mRootView.getHeight() < this.mRootView.getWidth()) {
            return 1.0f;
        }
        return (float)this.mRootView.getHeight() / (float)this.mRootView.getWidth();
    }

    public boolean isVisible() {
        return this.mIsVisible;
    }

    public void release() {
        this.mContext = null;
        this.mRootView = null;
    }

    public abstract void render();

    public void rotate(float f, float f2, float f3) {
        ExtendedGlSurfaceView.rotate(this.mSequencedLocalMatrix, f, f2, f3);
    }

    public void scale(float f, float f2, float f3) {
        ExtendedGlSurfaceView.scale(this.mSequencedLocalMatrix, f, f2, f3);
    }

    public void setGlobalMatrix(float[] arrf) {
        this.mGlobalMatrix = (float[])arrf.clone();
        Matrix.setIdentityM(this.mSequencedLocalMatrix, 0);
    }

    public void setVisibility(boolean bl) {
        this.mIsVisible = bl;
    }

    public void translate(float f, float f2, float f3) {
        ExtendedGlSurfaceView.translate(this.mSequencedLocalMatrix, f, f2, f3);
    }

    public void updateRootView(View view) {
        this.mRootView = view;
    }
}

