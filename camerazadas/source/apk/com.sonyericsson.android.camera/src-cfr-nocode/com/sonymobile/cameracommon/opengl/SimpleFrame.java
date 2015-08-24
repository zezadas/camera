/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.OpenGlException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SimpleFrame
extends FrameBase {
    private static final String TAG;
    private float[] mColor;
    private int mSimpleColorInGLSL;

    static;

    public SimpleFrame(Context var1, View var2);

    @Override
    protected void doRender();

    @Override
    protected void initializeShaderProgram() throws OpenGlException;

    @Override
    public void release();

    public void setColor(float var1, float var2, float var3, float var4);

    @Override
    public void updateVertexBuffer(float[] var1);
}

