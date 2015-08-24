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
import java.nio.FloatBuffer;

public class CopiedFrame
extends FrameBase {
    private static final String TAG = CopiedFrame.class.getSimpleName();
    private int mInputTexture = 0;
    private int mInputTextureInGLSL = 0;

    public CopiedFrame(Context context, View view) {
        super(context, view);
    }

    private void updateVertexBuffer(FloatBuffer floatBuffer) {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glBufferData(34962, floatBuffer.limit() * 4, floatBuffer, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    @Override
    protected void doRender() {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glVertexAttribPointer(this.mTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mSequencedLocalMatrix, 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mGlobalMatrix, 0, arrf, 0);
        GLES20.glUniformMatrix4fv(this.mMvpMatrixInGLSL, 1, false, arrf, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.mInputTexture);
        GLES20.glUniform1i(this.mInputTextureInGLSL, 0);
        GLES20.glDrawArrays(5, 0, 4);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "doRender():[Draw frame Error]");
        }
    }

    @Override
    protected void initializeShaderProgram() throws OpenGlException {
        this.mVertexInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, "aVertex");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mTexCoordInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, "aTexCoord");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mMvpMatrixInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "uMvpMatrix");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mInputTextureInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "sTexture");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        int[] arrn = new int[1];
        GLES20.glGetProgramiv(this.mShaderProgram, 35714, arrn, 0);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        if (arrn[0] == 0) {
            CameraLogger.e(TAG, "SimpleFrame.initializeShaderProgram():[Program link Error]");
            throw new OpenGlException("SimpleFrame.initializeShaderProgram():[Program link Error]");
        }
        this.initializeVertexAndTextureCoordinatesBuffer();
    }

    @Override
    public void release() {
        super.release();
        this.finalizeShaderProgram();
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
        GLES20.glBlendFunc(1, 771);
        this.doRender();
        GLES20.glBlendFunc(770, 771);
        if (this.disableLocalFunctions()) return;
        CameraLogger.e(TAG, "render():[Disable functions failed.]");
    }

    public void setAlignXYAxisCoordinates() {
        this.updateVertexBuffer(ExtendedGlSurfaceView.allocFloatBuffer(new float[]{this.getWidthNorm() * -1.0f, this.getHeightNorm() * 1.0f, 0.0f, this.getWidthNorm() * -1.0f, this.getHeightNorm() * -1.0f, 0.0f, this.getWidthNorm() * 1.0f, this.getHeightNorm() * 1.0f, 0.0f, this.getWidthNorm() * 1.0f, this.getHeightNorm() * -1.0f, 0.0f}));
    }

    public void setInputTexture(int n) {
        this.mInputTexture = n;
    }

    public void setNormalizedXYAxisToScreen() {
        this.updateVertexBuffer(ExtendedGlSurfaceView.allocFloatBuffer(new float[]{-1.0f, 1.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, -1.0f, 0.0f}));
    }
}

