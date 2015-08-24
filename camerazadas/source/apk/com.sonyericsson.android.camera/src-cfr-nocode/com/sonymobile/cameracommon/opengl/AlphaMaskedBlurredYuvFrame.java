/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import com.sonymobile.cameracommon.opengl.YuvFrame;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AlphaMaskedBlurredYuvFrame
extends YuvFrame {
    private static final float BLUR_SPREAD_LEVEL = 8.444f;
    private static final float CENTER_WEIGHT = 1.0f;
    private static final float LOD = 4.2660003f;
    private static final float SPREAD_OFFSET = 0.5688f;
    private static final String TAG;
    private static final int TEXTURE_INDEX_MASK = 2;
    private float mBlurLevel;
    private int mImageHeight;
    private int mImageWidth;
    private int[] mMaskTexCoordBuffer;
    private int mMaskTexCoordInGLSL;
    private int[] mMaskTexture;
    private Bitmap mShaderMaskBmp;

    static;

    public AlphaMaskedBlurredYuvFrame(Context var1, View var2);

    private void finalizeMaskTexture();

    private void initializeMaskTexture();

    private void prepareMaskTexture(Bitmap var1);

    private void updateTexCoord(Rect var1, Rect var2);

    private void updateVertex(Rect var1, Rect var2);

    @Override
    protected void createTextureAndSetTo(int var1, int var2, int var3, byte[] var4, int var5, YuvFrame.TextureDataType var6);

    @Override
    protected void doRender();

    @Override
    public void release();

    public void setBlurArea(Rect var1, Rect var2, Bitmap var3);

    public void setBlurLevel(float var1);

    @Override
    public void setShaderProgram(int var1);

    @Override
    public void setTextureYvu(int var1, int var2, byte[] var3, int var4, int var5);

    @Override
    protected void setupParameter(int var1);

    @Override
    protected boolean setupTexture(int var1, int var2, int[] var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class BlurIncrementalController {
        private float mActualBlurLevel;
        private final float mInitialBlurLevel;
        private final float mStep;
        private AlphaMaskedBlurredYuvFrame mTarget;
        private float mTargetBlurLevel;

        public BlurIncrementalController(float var1, float var2);

        public void applyActual();

        public void resetActual();

        public void setTargetElement(AlphaMaskedBlurredYuvFrame var1);

        public void update();

        public void updateTarget(float var1);
    }

}

