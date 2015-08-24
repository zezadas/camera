/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.nio.Buffer;
import java.nio.FloatBuffer;

public class AlphaMaskedBlurredYuvFrame
extends YuvFrame {
    private static final float BLUR_SPREAD_LEVEL = 8.444f;
    private static final float CENTER_WEIGHT = 1.0f;
    private static final float LOD = 4.2660003f;
    private static final float SPREAD_OFFSET = 0.5688f;
    private static final String TAG = AlphaMaskedBlurredYuvFrame.class.getSimpleName();
    private static final int TEXTURE_INDEX_MASK = 2;
    private float mBlurLevel = 1.0f;
    private int mImageHeight = 0;
    private int mImageWidth = 0;
    private int[] mMaskTexCoordBuffer = new int[1];
    private int mMaskTexCoordInGLSL = 0;
    private int[] mMaskTexture = new int[1];
    private Bitmap mShaderMaskBmp = null;

    public AlphaMaskedBlurredYuvFrame(Context context, View view) {
        super(context, view);
        this.initializeMaskTexture();
    }

    private void finalizeMaskTexture() {
        GLES20.glDeleteTextures(1, this.mMaskTexture, 0);
    }

    private void initializeMaskTexture() {
        GLES20.glGenTextures(1, this.mMaskTexture, 0);
    }

    private void prepareMaskTexture(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mMaskTexture[0], bitmap);
        GLES20.glBindTexture(3553, this.mMaskTexture[0]);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindTexture(3553, 0);
    }

    private void updateTexCoord(Rect object, Rect rect) {
        float f = (float)object.top / (float)rect.height();
        float f2 = (float)object.bottom / (float)rect.height();
        float f3 = (float)object.left / (float)rect.width();
        float f4 = (float)object.right / (float)rect.width();
        object = ExtendedGlSurfaceView.allocFloatBuffer(new float[]{f3, f, f3, f2, f4, f, f4, f2});
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glBufferData(34962, object.limit() * 4, (Buffer)object, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    private void updateVertex(Rect rect, Rect rect2) {
        this.scale((float)rect.width() / (float)rect2.width(), (float)rect.height() / (float)rect2.height(), 1.0f);
        int n = rect.centerX();
        int n2 = rect2.centerX();
        int n3 = rect.centerY();
        int n4 = rect2.centerY();
        this.translate((float)(n - n2) / ((float)this.mRootView.getWidth() / 2.0f), (float)((n3 - n4) * -1) / ((float)this.mRootView.getWidth() / 2.0f), 0.1f);
    }

    @Override
    protected void createTextureAndSetTo(int n, int n2, int n3, byte[] arrby, int n4, YuvFrame.TextureDataType textureDataType) {
        if (arrby == null) {
            return;
        }
        GLES20.glBindTexture(3553, n);
        GLES20.glHint(33170, 4354);
        GLES20.glPixelStorei(3317, 1);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9987.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        AlphaMaskedBlurredYuvFrame.nativeGlTexImage2D(textureDataType.type, n2, n3, arrby, n4);
        GLES20.glGenerateMipmap(3553);
        GLES20.glBindTexture(3553, 0);
    }

    @Override
    protected void doRender() {
        GLES20.glEnableVertexAttribArray(this.mMaskTexCoordInGLSL);
        super.doRender();
        GLES20.glDisableVertexAttribArray(this.mMaskTexCoordInGLSL);
    }

    @Override
    public void release() {
        super.release();
        this.finalizeMaskTexture();
        this.mShaderMaskBmp = null;
        GLES20.glDeleteBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
    }

    public void setBlurArea(Rect rect, Rect rect2, Bitmap bitmap) {
        if (rect.left < rect2.left) {
            rect.left = rect2.left;
        }
        if (rect.top < rect2.top) {
            rect.top = rect2.top;
        }
        if (rect2.right < rect.right) {
            rect.right = rect2.right;
        }
        if (rect2.bottom < rect.bottom) {
            rect.bottom = rect2.bottom;
        }
        this.updateTexCoord(rect, rect2);
        this.updateVertex(rect, rect2);
        if (!bitmap.equals(this.mShaderMaskBmp)) {
            this.mShaderMaskBmp = bitmap;
            this.prepareMaskTexture(this.mShaderMaskBmp);
        }
    }

    public void setBlurLevel(float f) {
        this.mBlurLevel = f;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void setShaderProgram(int n) {
        super.setShaderProgram(n);
        try {
            this.mMaskTexCoordInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, "aMaskTexCoord");
            ExtendedGlSurfaceView.checkGlErrorWithException();
        }
        catch (OpenGlException var2_2) {
            CameraLogger.e(TAG, "OpenGL initialize Error.");
            var2_2.printStackTrace();
        }
        FloatBuffer floatBuffer = ExtendedGlSurfaceView.allocFloatBuffer(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f});
        GLES20.glGenBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glBufferData(34962, floatBuffer.limit() * 4, floatBuffer, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    @Override
    public void setTextureYvu(int n, int n2, byte[] arrby, int n3, int n4) {
        this.mImageWidth = n;
        this.mImageHeight = n2;
        super.setTextureYvu(n, n2, arrby, n3, n4);
    }

    @Override
    protected void setupParameter(int n) {
        super.setupParameter(n);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(n, "uTextureWidth"), this.mImageWidth);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(n, "uTextureHeight"), this.mImageHeight);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(n, "uBlurSpread"), 8.444f * this.mBlurLevel);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(n, "uLod"), 4.2660003f * this.mBlurLevel);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(n, "uSpreadOffset"), 0.5688f);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(n, "uCenterWeight"), 1.0f);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(n, "uAlphaMaskTexture"), 2);
    }

    @Override
    protected boolean setupTexture(int n, int n2, int[] arrn) {
        if (!super.setupTexture(n, n2, arrn)) {
            return false;
        }
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glVertexAttribPointer(this.mMaskTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.mMaskTexture[0]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".draw():[Texture binder Error]");
            return false;
        }
        return true;
    }

    public static class BlurIncrementalController {
        private float mActualBlurLevel;
        private final float mInitialBlurLevel;
        private final float mStep;
        private AlphaMaskedBlurredYuvFrame mTarget = null;
        private float mTargetBlurLevel;

        public BlurIncrementalController(float f, float f2) {
            this.mInitialBlurLevel = f;
            this.resetActual();
            this.mTargetBlurLevel = this.mInitialBlurLevel;
            this.mStep = f2;
        }

        public void applyActual() {
            this.mTarget.setBlurLevel(this.mActualBlurLevel);
        }

        public void resetActual() {
            this.mActualBlurLevel = this.mInitialBlurLevel;
        }

        public void setTargetElement(AlphaMaskedBlurredYuvFrame alphaMaskedBlurredYuvFrame) {
            this.mTarget = alphaMaskedBlurredYuvFrame;
        }

        /*
         * Enabled aggressive block sorting
         */
        public void update() {
            float f = this.mTargetBlurLevel - this.mActualBlurLevel;
            if (0.0f < f) {
                this.mActualBlurLevel+=this.mStep;
            } else if (f < 0.0f) {
                this.mActualBlurLevel-=this.mStep;
            }
            if (this.mActualBlurLevel < 0.0f) {
                this.mActualBlurLevel = 0.0f;
            }
            if (1.0f < this.mActualBlurLevel) {
                this.mActualBlurLevel = 1.0f;
            }
            this.applyActual();
        }

        public void updateTarget(float f) {
            this.mTargetBlurLevel = f;
        }
    }

}

