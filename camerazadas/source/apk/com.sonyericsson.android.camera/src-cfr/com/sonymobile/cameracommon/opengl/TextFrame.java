/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.FrameBase;

public class TextFrame
extends FrameBase {
    private static final String TAG = TextFrame.class.getSimpleName();
    private static final int TEXTURE_INDEX_0 = 0;
    private Bitmap mTextBitmap = null;
    private Rect mTextBounds = new Rect();
    private Canvas mTextCanvas = null;
    private Paint mTextPaint = null;
    private final int[] mTexture = new int[1];
    private Rect mTextureRect = null;

    public TextFrame(Context context, View view, Rect rect, Paint paint) {
        super(context, view);
        this.mTextureRect = rect;
        this.mTextPaint = paint;
        this.initializeTextures();
    }

    private void finalizeTextures() {
        if (this.mTexture[0] != 0) {
            GLES20.glDeleteTextures(1, this.mTexture, 0);
            this.mTexture[0] = 0;
        }
        if (!(this.mTextBitmap == null || this.mTextBitmap.isRecycled())) {
            this.mTextBitmap.recycle();
        }
        this.mTextBitmap = null;
        this.mTextCanvas = null;
        this.mTextureRect = null;
    }

    private void initializeTextures() {
        GLES20.glGenTextures(1, this.mTexture, 0);
        this.mTextBitmap = Bitmap.createBitmap(this.mTextureRect.width(), this.mTextureRect.height(), Bitmap.Config.ARGB_8888);
        this.mTextCanvas = new Canvas(this.mTextBitmap);
        this.mTextCanvas.drawColor(0);
        this.reloadBitmapToTexture();
    }

    private void reloadBitmapToTexture() {
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mTextBitmap);
    }

    @Override
    protected void doRender() {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glVertexAttribPointer(this.mTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.mTexture[0]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "doRender():[Texture binder Error]");
        }
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.mShaderProgram, "uTextureRgb"), 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.mShaderProgram, "uAlpha"), this.mAlpha);
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
    public void release() {
        super.release();
        this.finalizeShaderProgram();
        this.finalizeTextures();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setText(String string) {
        int n;
        this.mTextPaint.getTextBounds(string, 0, string.length(), this.mTextBounds);
        this.mTextCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        float f = 0.0f;
        switch (.$SwitchMap$android$graphics$Paint$Align[this.mTextPaint.getTextAlign().ordinal()]) {
            case 1: {
                f = (this.mTextBitmap.getHeight() - this.mTextBounds.height()) / 2;
                break;
            }
            case 2: {
                f = this.mTextBitmap.getWidth() / 2;
                break;
            }
            case 3: {
                f = this.mTextBitmap.getWidth() - (this.mTextBitmap.getHeight() - this.mTextBounds.height()) / 2;
            }
        }
        this.mTextPaint.breakText(string, true, this.mTextBitmap.getWidth(), null);
        if (string.contains((CharSequence)"\n")) {
            n = string.indexOf("\n") + 1;
            string.replaceAll("\n", "");
        } else {
            n = this.mTextPaint.breakText(string, true, this.mTextBitmap.getWidth(), null);
        }
        if (n == string.length()) {
            this.mTextCanvas.drawText(string, f, this.mTextBitmap.getHeight() / 2 + this.mTextBounds.height() / 2, this.mTextPaint);
        } else {
            String string2 = string.substring(0, n - 1);
            string = string.substring(n);
            this.mTextCanvas.drawText(string2, f, this.mTextBitmap.getHeight() / 2 + this.mTextBounds.height() / 2 - this.mTextBounds.height() / 2, this.mTextPaint);
            this.mTextCanvas.drawText(string, f, this.mTextBitmap.getHeight() / 2 + this.mTextBounds.height() / 2 + this.mTextBounds.height() / 2, this.mTextPaint);
        }
        this.reloadBitmapToTexture();
    }

}

