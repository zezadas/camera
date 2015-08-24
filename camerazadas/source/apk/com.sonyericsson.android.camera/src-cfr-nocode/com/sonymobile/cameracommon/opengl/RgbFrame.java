/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RgbFrame
extends FrameBase {
    private static final String TAG;
    private static final int TEXTURE_INDEX_0 = 0;
    private Bitmap mBitmap;
    private final Rect mNinePatchTextureRect;
    private final int mResId;
    private int[] mTexture;
    private final Type mType;

    static;

    public RgbFrame(Context var1, View var2, int var3);

    public RgbFrame(Context var1, View var2, int var3, Rect var4);

    public RgbFrame(Context var1, View var2, Bitmap var3);

    public RgbFrame(Context var1, View var2, int[] var3, Rect var4);

    private void finalizeTextures();

    private void initializeTextures();

    private void loadNinePatchTexture();

    private void loadNormalTexture();

    private void loadPreLoadedTexture();

    private void loadTexture();

    @Override
    protected void doRender();

    public Rect getOnScreenSize();

    @Override
    public void release();

    @Override
    public void setShaderProgram(int var1);

    public void updataTexture(Bitmap var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class Type
    extends Enum<Type> {
        private static final /* synthetic */ Type[] $VALUES;
        public static final /* enum */ Type NINE_PATCH_RESOURCE;
        public static final /* enum */ Type NORMAL_RESOURCE;
        public static final /* enum */ Type PRE_LOADED_BITMAP;
        public static final /* enum */ Type PRE_LOADED_TEXTURE;

        static;

        private Type();

        public static Type valueOf(String var0);

        public static Type[] values();
    }

}

