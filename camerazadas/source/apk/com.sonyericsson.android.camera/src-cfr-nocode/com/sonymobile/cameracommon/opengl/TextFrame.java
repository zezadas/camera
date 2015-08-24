/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TextFrame
extends FrameBase {
    private static final String TAG;
    private static final int TEXTURE_INDEX_0 = 0;
    private Bitmap mTextBitmap;
    private Rect mTextBounds;
    private Canvas mTextCanvas;
    private Paint mTextPaint;
    private final int[] mTexture;
    private Rect mTextureRect;

    static;

    public TextFrame(Context var1, View var2, Rect var3, Paint var4);

    private void finalizeTextures();

    private void initializeTextures();

    private void reloadBitmapToTexture();

    @Override
    protected void doRender();

    @Override
    public void release();

    public void setText(String var1);

}

