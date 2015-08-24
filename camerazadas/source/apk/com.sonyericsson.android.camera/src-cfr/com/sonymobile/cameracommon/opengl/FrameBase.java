/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.AlphaBlendable;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import com.sonymobile.cameracommon.opengl.RenderBase;
import java.nio.Buffer;

public abstract class FrameBase
extends RenderBase
implements AlphaBlendable {
    private static final int DEFAULT_TEXCOORD_INDEX = 1;
    private static final int DEFAULT_VERTEX_INDEX = 0;
    private static final int INVALID_INDEX_IN_GLSL = -1;
    private static final String TAG = FrameBase.class.getSimpleName();
    protected float mAlpha = 1.0f;
    protected int mMvpMatrixInGLSL;
    protected int mShaderProgram = 0;
    protected int[] mTexCoordBuffers = new int[1];
    protected int mTexCoordInGLSL;
    protected int[] mVertexBuffers = new int[1];
    protected int mVertexInGLSL;

    protected FrameBase(Context context, View view) {
        super(context, view);
    }

    private void checkAndBindAttriLocation() {
        if (this.mVertexInGLSL == -1 || this.mTexCoordInGLSL == -1) {
            CameraLogger.e(TAG, "checkAndBindAttriLocation: mVertexInGLSL = " + this.mVertexInGLSL + "mTexCoordInGLSL = " + this.mTexCoordInGLSL);
            this.mVertexInGLSL = 0;
            GLES20.glBindAttribLocation(this.mShaderProgram, this.mVertexInGLSL, "vertex");
            ExtendedGlSurfaceView.checkGlErrorWithException();
            this.mTexCoordInGLSL = 1;
            GLES20.glBindAttribLocation(this.mShaderProgram, this.mTexCoordInGLSL, "texCoord");
            ExtendedGlSurfaceView.checkGlErrorWithException();
            GLES20.glLinkProgram(this.mShaderProgram);
            ExtendedGlSurfaceView.checkGlErrorWithException();
        }
    }

    private boolean enableShaderProgram() {
        if (this.mShaderProgram == 0) {
            CameraLogger.e(TAG, ".enableYuv2RgbShaderProgram():[Program is Invalid]");
            return false;
        }
        GLES20.glUseProgram(this.mShaderProgram);
        GLES20.glValidateProgram(this.mShaderProgram);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".enableYuv2RgbShaderProgram():[Program Error]");
            return false;
        }
        return true;
    }

    private void finalizeVertexAndTextureCoordinatesBuffer() {
        GLES20.glDeleteBuffers(this.mVertexBuffers.length, this.mVertexBuffers, 0);
        GLES20.glDeleteBuffers(this.mTexCoordBuffers.length, this.mTexCoordBuffers, 0);
    }

    protected boolean disableLocalFunctions() {
        if (this.mVertexInGLSL != -1) {
            GLES20.glDisableVertexAttribArray(this.mVertexInGLSL);
        }
        if (this.mTexCoordInGLSL != -1) {
            GLES20.glDisableVertexAttribArray(this.mTexCoordInGLSL);
        }
        return true;
    }

    protected abstract void doRender();

    protected boolean enableLocalFunctions() {
        if (this.mVertexInGLSL != -1) {
            GLES20.glEnableVertexAttribArray(this.mVertexInGLSL);
        }
        if (this.mTexCoordInGLSL != -1) {
            GLES20.glEnableVertexAttribArray(this.mTexCoordInGLSL);
        }
        if (!this.enableShaderProgram()) {
            CameraLogger.e(TAG, "enableFunctions():[Enable shader program failed.]");
            return false;
        }
        return true;
    }

    protected void finalizeShaderProgram() {
        this.mShaderProgram = 0;
        this.finalizeVertexAndTextureCoordinatesBuffer();
    }

    protected void initializeShaderProgram() throws OpenGlException {
        this.mVertexInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, "vertex");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mTexCoordInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, "texCoord");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.checkAndBindAttriLocation();
        this.mMvpMatrixInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "mvpMatrix");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        int[] arrn = new int[1];
        GLES20.glGetProgramiv(this.mShaderProgram, 35714, arrn, 0);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        if (arrn[0] == 0) {
            CameraLogger.e(TAG, "TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]");
            throw new OpenGlException("TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]");
        }
        this.initializeVertexAndTextureCoordinatesBuffer();
    }

    protected void initializeVertexAndTextureCoordinatesBuffer() {
        float f = this.getWidthNorm();
        float f2 = this.getHeightNorm();
        float f3 = this.getWidthNorm();
        float f4 = this.getHeightNorm();
        float f5 = this.getWidthNorm();
        float f6 = this.getHeightNorm();
        float f7 = this.getWidthNorm();
        float f8 = this.getHeightNorm();
        GLES20.glGenBuffers(this.mVertexBuffers.length, this.mVertexBuffers, 0);
        GLES20.glGenBuffers(this.mTexCoordBuffers.length, this.mTexCoordBuffers, 0);
        this.updateVertexBuffer(new float[]{f * -1.0f, f2 * 1.0f, 0.0f, f3 * -1.0f, f4 * -1.0f, 0.0f, f5 * 1.0f, f6 * 1.0f, 0.0f, f7 * 1.0f, f8 * -1.0f, 0.0f});
        this.updateTextureBuffer(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f});
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void render() {
        if (!this.isVisible()) {
            return;
        }
        if (!this.enableLocalFunctions()) {
            CameraLogger.e(TAG, "render():[Enable functions failed.]");
            return;
        }
        this.doRender();
        if (this.disableLocalFunctions()) return;
        CameraLogger.e(TAG, "render():[Disable functions failed.]");
    }

    @Override
    public void setAlpha(float f) {
        this.mAlpha = f;
    }

    public void setShaderProgram(int n) {
        this.mShaderProgram = n;
        try {
            this.initializeShaderProgram();
            return;
        }
        catch (OpenGlException var2_2) {
            CameraLogger.e(TAG, "OpenGL initialize Error.");
            var2_2.printStackTrace();
            return;
        }
    }

    public void updateTextureBuffer(float[] object) {
        object = ExtendedGlSurfaceView.allocFloatBuffer((float[])object);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glBufferData(34962, object.limit() * 4, (Buffer)object, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    public void updateVertexBuffer(float[] object) {
        object = ExtendedGlSurfaceView.allocFloatBuffer((float[])object);
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glBufferData(34962, object.limit() * 4, (Buffer)object, 35048);
        GLES20.glBindBuffer(34962, 0);
    }
}

