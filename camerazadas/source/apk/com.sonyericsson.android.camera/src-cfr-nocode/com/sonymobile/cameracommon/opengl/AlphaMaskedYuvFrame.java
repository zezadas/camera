/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.sonymobile.cameracommon.opengl.YuvFrame;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AlphaMaskedYuvFrame
extends YuvFrame {
    private static final float[] MASKTEXCOORD;
    private static final String TAG;
    private static final int TEXTURE_INDEX_MASK = 3;
    private Bitmap mMaskBmp;
    private int[] mMaskTexCoordBuffer;
    private int mMaskTexCoordInGLSL;
    private int[] mMaskTexture;

    static;

    public AlphaMaskedYuvFrame(Context var1, View var2, int var3);

    public AlphaMaskedYuvFrame(Context var1, View var2, Bitmap var3);

    public AlphaMaskedYuvFrame(Context var1, View var2, Bitmap var3, boolean var4);

    private void finalizeMaskTexture();

    private void initializeMaskTexture(int var1);

    private void initializeMaskTexture(Bitmap var1);

    private void prepareMaskTexture();

    @Override
    protected boolean disableLocalFunctions();

    @Override
    protected void doRender();

    @Override
    protected boolean enableLocalFunctions();

    @Override
    public void release();

    @Override
    public void setShaderProgram(int var1);

    @Override
    protected void setupParameter(int var1);

    @Override
    protected boolean setupTexture(int var1, int var2, int[] var3);

    public void updateMaskTextureBuffer(float[] var1);
}

