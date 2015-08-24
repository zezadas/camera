/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.OpenGlException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class YuvFrame
extends FrameBase {
    private static final int NUM_OF_FRAME_TEXTURES = 2;
    private static final String TAG;
    protected static final int TEXTURE_INDEX_VU = 1;
    protected static final int TEXTURE_INDEX_Y = 0;
    private int mAlphaInGLSL;
    private float mFrameAspectRatio;
    protected int[] mFrameTextures;
    private boolean mShouldKeepAspect;
    private int mTextureVuInGLSL;
    private int mTextureYInGLSL;

    static;

    public YuvFrame(Context var1, View var2);

    public YuvFrame(Context var1, View var2, boolean var3);

    private void initializeTextures();

    private static boolean isNearlyEquals(float var0, float var1);

    protected static final native int nativeGlTexImage2D(int var0, int var1, int var2, byte[] var3, int var4);

    private void setFrameTextures(byte[] var1, int var2, int var3, int var4, int var5);

    protected void createTextureAndSetTo(int var1, int var2, int var3, byte[] var4, int var5, TextureDataType var6);

    @Override
    protected void doRender();

    public void finalizeTextures();

    @Override
    protected void initializeShaderProgram() throws OpenGlException;

    @Override
    public void release();

    protected boolean renderYuvFrame(int var1, int var2, int[] var3, int var4);

    public void setTextureYvu(int var1, int var2, byte[] var3, int var4, int var5);

    protected void setupMvpMatrix();

    protected void setupParameter(int var1);

    protected boolean setupTexture(int var1, int var2, int[] var3);

    @Override
    public void updateTextureBuffer(float[] var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected static final class TextureDataType
    extends Enum<TextureDataType> {
        private static final /* synthetic */ TextureDataType[] $VALUES;
        public static final /* enum */ TextureDataType LUMINANCE;
        public static final /* enum */ TextureDataType LUMINANCE_ALPHA;
        public final int type;

        static;

        private TextureDataType(int var3);

        public static TextureDataType valueOf(String var0);

        public static TextureDataType[] values();
    }

}

