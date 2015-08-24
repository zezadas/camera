/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class ExtendedGlSurfaceView
extends GLSurfaceView {
    public static final boolean IS_OPENGL_DEBUG = false;
    private static final int TARGET_OPEN_GL_ES_VERSION = 2;

    public ExtendedGlSurfaceView(Context var1);

    public ExtendedGlSurfaceView(Context var1, AttributeSet var2);

    public static ByteBuffer allocByteBuffer(byte[] var0);

    public static FloatBuffer allocFloatBuffer(float[] var0);

    public static void bindTextureAndBitmap(int var0, Bitmap var1);

    public static void checkGlErrorWithException() throws OpenGlException;

    private static float[] get4x4RotationMatrix(float var0, float var1, float var2, float var3);

    private static float[] get4x4ScalingMatrix(float var0, float var1, float var2);

    private static float[] get4x4TranslationMatrix(float var0, float var1, float var2);

    public static boolean isGlErrorOccured();

    public static boolean loadBitmapFromResourceAs9Patch(Context var0, Bitmap var1, int var2, Rect var3);

    static String loadShaderSourceCodesFrom(Context var0, int[] var1);

    public static void rotate(float[] var0, float var1, float var2, float var3);

    public static void scale(float[] var0, float var1, float var2, float var3);

    public static void translate(float[] var0, float var1, float var2, float var3);
}

