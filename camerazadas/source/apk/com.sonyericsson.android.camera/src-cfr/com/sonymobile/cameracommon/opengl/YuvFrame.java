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

public class YuvFrame
extends FrameBase {
    private static final int NUM_OF_FRAME_TEXTURES = 2;
    private static final String TAG;
    protected static final int TEXTURE_INDEX_VU = 1;
    protected static final int TEXTURE_INDEX_Y = 0;
    private int mAlphaInGLSL;
    private float mFrameAspectRatio;
    protected int[] mFrameTextures;
    private boolean mShouldKeepAspect = false;
    private int mTextureVuInGLSL;
    private int mTextureYInGLSL;

    static {
        System.loadLibrary("yuvframe");
        TAG = YuvFrame.class.getSimpleName();
    }

    public YuvFrame(Context context, View view) {
        super(context, view);
        this.initializeTextures();
    }

    public YuvFrame(Context context, View view, boolean bl) {
        super(context, view);
        this.mShouldKeepAspect = bl;
        this.initializeTextures();
    }

    private void initializeTextures() {
        if (this.mFrameTextures == null) {
            this.mFrameTextures = new int[2];
            GLES20.glGenTextures(2, this.mFrameTextures, 0);
        }
    }

    private static boolean isNearlyEquals(float f, float f2) {
        if (Math.abs(f - f2) < 0.001f) {
            return true;
        }
        return false;
    }

    protected static final native int nativeGlTexImage2D(int var0, int var1, int var2, byte[] var3, int var4);

    private void setFrameTextures(byte[] arrby, int n, int n2, int n3, int n4) {
        this.createTextureAndSetTo(this.mFrameTextures[0], n3, n4, arrby, n, TextureDataType.LUMINANCE);
        this.createTextureAndSetTo(this.mFrameTextures[1], n3 / 2, n4 / 2, arrby, n2, TextureDataType.LUMINANCE_ALPHA);
    }

    protected void createTextureAndSetTo(int n, int n2, int n3, byte[] arrby, int n4, TextureDataType textureDataType) {
        if (arrby == null) {
            return;
        }
        GLES20.glBindTexture(3553, n);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        YuvFrame.nativeGlTexImage2D(textureDataType.type, n2, n3, arrby, n4);
        GLES20.glBindTexture(3553, 0);
    }

    @Override
    protected void doRender() {
        this.renderYuvFrame(this.mVertexBuffers[0], this.mTexCoordBuffers[0], this.mFrameTextures, this.mShaderProgram);
    }

    public void finalizeTextures() {
        if (this.mFrameTextures != null) {
            GLES20.glDeleteTextures(2, this.mFrameTextures, 0);
        }
        this.mFrameTextures = null;
    }

    @Override
    protected void initializeShaderProgram() throws OpenGlException {
        this.mTextureYInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "textureY");
        this.mTextureVuInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "textureVu");
        this.mAlphaInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, "uAlpha");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        super.initializeShaderProgram();
    }

    @Override
    public void release() {
        super.release();
        this.finalizeShaderProgram();
        this.finalizeTextures();
    }

    protected boolean renderYuvFrame(int n, int n2, int[] arrn, int n3) {
        if (!this.setupTexture(n, n2, arrn)) {
            return false;
        }
        this.setupParameter(n3);
        this.setupMvpMatrix();
        GLES20.glDrawArrays(5, 0, 4);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".render():[Draw frame Error]");
            return false;
        }
        return true;
    }

    public void setTextureYvu(int n, int n2, byte[] arrby, int n3, int n4) {
        this.initializeTextures();
        this.setFrameTextures(arrby, n3, n4, n, n2);
        this.mFrameAspectRatio = (float)n2 / (float)n;
    }

    protected void setupMvpMatrix() {
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mSequencedLocalMatrix, 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, this.mGlobalMatrix, 0, arrf, 0);
        GLES20.glUniformMatrix4fv(this.mMvpMatrixInGLSL, 1, false, arrf, 0);
    }

    protected void setupParameter(int n) {
        GLES20.glUniform1f(this.mAlphaInGLSL, this.mAlpha);
    }

    protected boolean setupTexture(int n, int n2, int[] arrn) {
        GLES20.glBindBuffer(34962, n);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, n2);
        GLES20.glVertexAttribPointer(this.mTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, arrn[0]);
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, arrn[1]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".draw():[Texture binder Error]");
            return false;
        }
        GLES20.glUniform1i(this.mTextureYInGLSL, 0);
        GLES20.glUniform1i(this.mTextureVuInGLSL, 1);
        return true;
    }

    @Override
    public void updateTextureBuffer(float[] arrf) {
        if (this.mShouldKeepAspect) {
            if (this.mRootView.getWidth() == 0) {
                return;
            }
            float f = (float)this.mRootView.getHeight() / (float)this.mRootView.getWidth();
            int n = 0;
            if (!YuvFrame.isNearlyEquals(f, this.mFrameAspectRatio)) {
                int n2 = arrf.length;
                for (int i = 0; i < n2; ++i) {
                    float f2 = arrf[i];
                    if (n % 2 == 1) {
                        arrf[n] = (f2 - 0.5f) * f / this.mFrameAspectRatio + 0.5f;
                    }
                    ++n;
                }
            }
        }
        super.updateTextureBuffer(arrf);
    }

    protected static enum TextureDataType {
        LUMINANCE(0),
        LUMINANCE_ALPHA(1);
        
        public final int type;

        private TextureDataType(int n2) {
            this.type = n2;
        }
    }

}

