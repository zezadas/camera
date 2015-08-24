/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.view.View;

/*
 * Exception performing whole class analysis.
 */
public abstract class RenderBase {
    protected static final int FLOAT_SIZE_IN_BYTE = 4;
    private Context mContext;
    protected float[] mGlobalMatrix;
    private boolean mIsVisible;
    protected View mRootView;
    protected float[] mSequencedLocalMatrix;

    protected RenderBase(Context var1, View var2);

    protected Context getContext();

    protected float getHeightNorm();

    public float[] getLocalGlobalMatrix();

    protected float getWidthNorm();

    public boolean isVisible();

    public void release();

    public abstract void render();

    public void rotate(float var1, float var2, float var3);

    public void scale(float var1, float var2, float var3);

    public void setGlobalMatrix(float[] var1);

    public void setVisibility(boolean var1);

    public void translate(float var1, float var2, float var3);

    public void updateRootView(View var1);
}

