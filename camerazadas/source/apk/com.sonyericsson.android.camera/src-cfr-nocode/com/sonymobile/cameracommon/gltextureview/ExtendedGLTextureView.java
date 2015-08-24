/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import java.nio.FloatBuffer;

/*
 * Exception performing whole class analysis.
 */
public class ExtendedGLTextureView
extends GLTextureView {
    public static final float Z_ORDER_STEP_SIZE = 2.0E-5f;
    private RenderingThread mContinuousRenderingThread;
    private final boolean mIsContinuousRenderingRequired;
    private final int mRequiredRenderingInterval;

    public ExtendedGLTextureView(Context var1);

    public ExtendedGLTextureView(Context var1, AttributeSet var2);

    public ExtendedGLTextureView(Context var1, boolean var2, int var3);

    public static FloatBuffer allocFloatBuffer(float[] var0);

    public static void bindTextureAndBitmap(int var0, Bitmap var1);

    public static void checkGlErrorWithException() throws OpenGlException;

    private static float[] get4x4RotationMatrix(float var0, float var1, float var2, float var3);

    private static float[] get4x4ScalingMatrix(float var0, float var1, float var2);

    private static float[] get4x4TranslationMatrix(float var0, float var1, float var2);

    public static boolean isGlErrorOccured();

    public static boolean loadBitmapFromResourceAs9Patch(Context var0, Bitmap var1, int var2, Rect var3);

    static String loadShaderSourceCodesFrom(Context var0, int var1);

    public static void rotate(float[] var0, float var1, float var2, float var3);

    public static void scale(float[] var0, float var1, float var2, float var3);

    public static void translate(float[] var0, float var1, float var2, float var3);

    @Override
    public void onPause();

    @Override
    public void onResume();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RenderingThread
    extends Thread {
        private final int mInterval;
        private boolean mIsAlive;
        final /* synthetic */ ExtendedGLTextureView this$0;

        public RenderingThread(ExtendedGLTextureView var1, int var2);

        public void release();

        @Override
        public void run();
    }

}

