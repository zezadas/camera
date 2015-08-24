/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.nio.Buffer;

public class AlphaMaskedYuvFrame
extends YuvFrame {
    private static final float[] MASKTEXCOORD;
    private static final String TAG;
    private static final int TEXTURE_INDEX_MASK = 3;
    private Bitmap mMaskBmp = null;
    private int[] mMaskTexCoordBuffer = new int[1];
    private int mMaskTexCoordInGLSL = 0;
    private int[] mMaskTexture = new int[1];

    static {
        TAG = AlphaMaskedYuvFrame.class.getSimpleName();
        MASKTEXCOORD = new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    }

    public AlphaMaskedYuvFrame(Context context, View view, int n) {
        super(context, view);
        this.initializeMaskTexture(n);
    }

    public AlphaMaskedYuvFrame(Context context, View view, Bitmap bitmap) {
        super(context, view);
        this.initializeMaskTexture(bitmap);
    }

    public AlphaMaskedYuvFrame(Context context, View view, Bitmap bitmap, boolean bl) {
        super(context, view, bl);
        this.initializeMaskTexture(bitmap);
    }

    private void finalizeMaskTexture() {
        GLES20.glDeleteTextures(1, this.mMaskTexture, 0);
    }

    private void initializeMaskTexture(int n) {
        GLES20.glGenTextures(1, this.mMaskTexture, 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        this.mMaskBmp = BitmapFactory.decodeResource(this.getContext().getResources(), n, options);
        this.prepareMaskTexture();
    }

    private void initializeMaskTexture(Bitmap bitmap) {
        GLES20.glGenTextures(1, this.mMaskTexture, 0);
        this.mMaskBmp = bitmap;
        this.prepareMaskTexture();
    }

    private void prepareMaskTexture() {
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mMaskTexture[0], this.mMaskBmp);
        GLES20.glBindTexture(3553, this.mMaskTexture[0]);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindTexture(3553, 0);
    }

    @Override
    protected boolean disableLocalFunctions() {
        GLES20.glDisableVertexAttribArray(this.mMaskTexCoordInGLSL);
        return super.disableLocalFunctions();
    }

    @Override
    protected void doRender() {
        this.prepareMaskTexture();
        super.doRender();
    }

    @Override
    protected boolean enableLocalFunctions() {
        GLES20.glEnableVertexAttribArray(this.mMaskTexCoordInGLSL);
        return super.enableLocalFunctions();
    }

    @Override
    public void release() {
        super.release();
        this.finalizeMaskTexture();
        if (this.mMaskBmp != null) {
            if (!this.mMaskBmp.isRecycled()) {
                this.mMaskBmp.recycle();
            }
            this.mMaskBmp = null;
        }
        GLES20.glDeleteBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
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
        GLES20.glGenBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
        this.updateMaskTextureBuffer(MASKTEXCOORD);
    }

    @Override
    protected void setupParameter(int n) {
        super.setupParameter(n);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(n, "uAlphaMaskTexture"), 3);
    }

    @Override
    protected boolean setupTexture(int n, int n2, int[] arrn) {
        if (!super.setupTexture(n, n2, arrn)) {
            return false;
        }
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glVertexAttribPointer(this.mMaskTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.mMaskTexture[0]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".draw():[Texture binder Error]");
            return false;
        }
        return true;
    }

    public void updateMaskTextureBuffer(float[] object) {
        object = ExtendedGlSurfaceView.allocFloatBuffer((float[])object);
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glBufferData(34962, object.limit() * 4, (Buffer)object, 35048);
        GLES20.glBindBuffer(34962, 0);
    }
}

