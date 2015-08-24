/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.FrameBase;

public class RgbFrame
extends FrameBase {
    private static final String TAG = RgbFrame.class.getSimpleName();
    private static final int TEXTURE_INDEX_0 = 0;
    private Bitmap mBitmap = null;
    private final Rect mNinePatchTextureRect;
    private final int mResId;
    private int[] mTexture = new int[1];
    private final Type mType;

    public RgbFrame(Context context, View view, int n) {
        super(context, view);
        this.mType = Type.NORMAL_RESOURCE;
        this.mResId = n;
        this.mNinePatchTextureRect = null;
        this.initializeTextures();
        this.loadTexture();
    }

    public RgbFrame(Context context, View view, int n, Rect rect) {
        super(context, view);
        this.mType = Type.NINE_PATCH_RESOURCE;
        this.mResId = n;
        this.mNinePatchTextureRect = rect;
        this.initializeTextures();
        this.loadTexture();
    }

    public RgbFrame(Context context, View view, Bitmap bitmap) {
        super(context, view);
        this.mType = Type.PRE_LOADED_BITMAP;
        this.mResId = 0;
        this.mNinePatchTextureRect = null;
        this.mBitmap = bitmap;
        this.initializeTextures();
        this.loadTexture();
    }

    public RgbFrame(Context context, View view, int[] arrn, Rect rect) {
        super(context, view);
        this.mType = Type.PRE_LOADED_TEXTURE;
        this.mResId = 0;
        this.mNinePatchTextureRect = rect;
        this.mBitmap = null;
        this.mTexture = arrn;
    }

    private void finalizeTextures() {
        if (this.mTexture[0] != 0) {
            GLES20.glDeleteTextures(1, this.mTexture, 0);
            this.mTexture[0] = 0;
        }
        if (!(this.mBitmap == null || this.mBitmap.isRecycled())) {
            this.mBitmap.recycle();
        }
        this.mBitmap = null;
    }

    private void initializeTextures() {
        GLES20.glGenTextures(1, this.mTexture, 0);
    }

    private void loadNinePatchTexture() {
        Object object = new BitmapFactory.Options();
        object.inScaled = false;
        object.inPreferredConfig = Bitmap.Config.ARGB_8888;
        object = BitmapFactory.decodeResource(this.getContext().getResources(), this.mResId, (BitmapFactory.Options)object);
        NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(this.getContext().getResources(), (Bitmap)object, object.getNinePatchChunk(), null, null);
        ninePatchDrawable.setBounds(this.mNinePatchTextureRect);
        this.mBitmap = Bitmap.createBitmap(this.mNinePatchTextureRect.width(), this.mNinePatchTextureRect.height(), Bitmap.Config.ARGB_8888);
        ninePatchDrawable.draw(new Canvas(this.mBitmap));
        object.recycle();
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
    }

    private void loadNormalTexture() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        this.mBitmap = BitmapFactory.decodeResource(this.getContext().getResources(), this.mResId, options);
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
    }

    private void loadPreLoadedTexture() {
        if (!(this.mBitmap == null || this.mBitmap.isRecycled())) {
            ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
        }
    }

    private void loadTexture() {
        switch (.$SwitchMap$com$sonymobile$cameracommon$opengl$RgbFrame$Type[this.mType.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.loadPreLoadedTexture();
                return;
            }
            case 2: {
                this.loadNormalTexture();
                return;
            }
            case 3: 
        }
        this.loadNinePatchTexture();
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

    public Rect getOnScreenSize() {
        if (this.mNinePatchTextureRect != null) {
            return this.mNinePatchTextureRect;
        }
        return new Rect(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }

    @Override
    public void release() {
        super.release();
        this.finalizeShaderProgram();
        if (this.mType != Type.PRE_LOADED_TEXTURE) {
            this.finalizeTextures();
        }
    }

    @Override
    public void setShaderProgram(int n) {
        super.setShaderProgram(n);
        this.loadTexture();
    }

    public void updataTexture(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.mBitmap = bitmap;
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
    }

    private static enum Type {
        PRE_LOADED_BITMAP,
        NORMAL_RESOURCE,
        NINE_PATCH_RESOURCE,
        PRE_LOADED_TEXTURE;
        

        private Type() {
        }
    }

}

