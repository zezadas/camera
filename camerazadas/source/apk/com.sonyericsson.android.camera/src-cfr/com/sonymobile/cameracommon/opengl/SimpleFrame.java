/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import java.nio.Buffer;

public class SimpleFrame
extends FrameBase {
    private static final String TAG = SimpleFrame.class.getSimpleName();
    private float[] mColor = new float[3];
    private int mSimpleColorInGLSL = 0;

    public SimpleFrame(Context context, View view) {
        super(context, view);
    }

    @Override
    protected void doRender() {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glUniform4f(this.mSimpleColorInGLSL, this.mColor[0], this.mColor[1], this.mColor[2], this.mAlpha);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "clearAndResetSurface():[Texture binder Error]");
        }
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mSequencedLocalMatrix, 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mGlobalMatrix, 0, arrf, 0);
        GLES20.glUniformMatrix4fv(this.mMvpMatrixInGLSL, 1, false, arrf, 0);
        GLES20.glDrawArrays(5, 0, 4);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "clearAndResetSurface():[Draw frame Error]");
        }
    }

    @Override
    protected void initializeShaderProgram() throws OpenGlException {
        this.mSimpleColorInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "simpleColor");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        super.initializeShaderProgram();
    }

    @Override
    public void release() {
        super.release();
        this.finalizeShaderProgram();
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.mColor[0] = f;
        this.mColor[1] = f2;
        this.mColor[2] = f3;
        this.mAlpha = f4;
    }

    @Override
    public void updateVertexBuffer(float[] object) {
        object = ExtendedGlSurfaceView.allocFloatBuffer((float[])object);
        GLES20.glGenBuffers(this.mVertexBuffers.length, this.mVertexBuffers, 0);
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glBufferData(34962, object.limit() * 4, (Buffer)object, 35048);
        GLES20.glBindBuffer(34962, 0);
    }
}

