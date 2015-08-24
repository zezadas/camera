/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.view.View;
import com.sonymobile.cameracommon.opengl.AlphaBlendable;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import com.sonymobile.cameracommon.opengl.RenderBase;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class FrameBase
extends RenderBase
implements AlphaBlendable {
    private static final int DEFAULT_TEXCOORD_INDEX = 1;
    private static final int DEFAULT_VERTEX_INDEX = 0;
    private static final int INVALID_INDEX_IN_GLSL = -1;
    private static final String TAG;
    protected float mAlpha;
    protected int mMvpMatrixInGLSL;
    protected int mShaderProgram;
    protected int[] mTexCoordBuffers;
    protected int mTexCoordInGLSL;
    protected int[] mVertexBuffers;
    protected int mVertexInGLSL;

    static;

    protected FrameBase(Context var1, View var2);

    private void checkAndBindAttriLocation();

    private boolean enableShaderProgram();

    private void finalizeVertexAndTextureCoordinatesBuffer();

    protected boolean disableLocalFunctions();

    protected abstract void doRender();

    protected boolean enableLocalFunctions();

    protected void finalizeShaderProgram();

    protected void initializeShaderProgram() throws OpenGlException;

    protected void initializeVertexAndTextureCoordinatesBuffer();

    @Override
    public void render();

    @Override
    public void setAlpha(float var1);

    public void setShaderProgram(int var1);

    public void updateTextureBuffer(float[] var1);

    public void updateVertexBuffer(float[] var1);
}

