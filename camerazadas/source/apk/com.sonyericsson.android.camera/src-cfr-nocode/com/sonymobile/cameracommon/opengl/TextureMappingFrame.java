/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.view.View;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import com.sonymobile.cameracommon.opengl.YuvFrame;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TextureMappingFrame
extends YuvFrame {
    private static final String TAG;
    protected int[] mIndexBuffers;
    protected int mIndicesNumber;
    protected int[] mVertexAlphaBuffers;
    protected int mVertexAlphaInGLSL;

    static;

    public TextureMappingFrame(Context var1, View var2);

    @Override
    protected boolean disableLocalFunctions();

    @Override
    protected void doRender();

    @Override
    protected boolean enableLocalFunctions();

    @Override
    protected void initializeShaderProgram() throws OpenGlException;

    @Override
    protected void initializeVertexAndTextureCoordinatesBuffer();

    @Override
    public void release();

    protected boolean renderYuvFrame();

    public void updateIndexBuffer(byte[] var1);

    public void updateVertexAlphaBuffer(float[] var1);
}

