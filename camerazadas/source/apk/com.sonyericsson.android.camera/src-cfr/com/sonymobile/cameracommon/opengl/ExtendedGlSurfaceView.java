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
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class ExtendedGlSurfaceView
extends GLSurfaceView {
    public static final boolean IS_OPENGL_DEBUG = false;
    private static final int TARGET_OPEN_GL_ES_VERSION = 2;

    public ExtendedGlSurfaceView(Context context) {
        super(context);
        this.setEGLContextClientVersion(2);
        this.setDebugFlags(3);
    }

    public ExtendedGlSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setEGLContextClientVersion(2);
        this.setDebugFlags(3);
    }

    public static ByteBuffer allocByteBuffer(byte[] arrby) {
        ByteBuffer byteBuffer = ByteBuffer.allocateDirect(arrby.length * 8 / 8).order(ByteOrder.nativeOrder());
        byteBuffer.put(arrby);
        byteBuffer.position(0);
        return byteBuffer;
    }

    public static FloatBuffer allocFloatBuffer(float[] arrf) {
        FloatBuffer floatBuffer = ByteBuffer.allocateDirect(arrf.length * 32 / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBuffer.put(arrf);
        floatBuffer.position(0);
        return floatBuffer;
    }

    public static void bindTextureAndBitmap(int n, Bitmap bitmap) {
        GLES20.glBindTexture(3553, n);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
        GLES20.glBindTexture(3553, 0);
    }

    public static void checkGlErrorWithException() throws OpenGlException {
        int n = GLES20.glGetError();
        if (n != 0) {
            throw new OpenGlException(String.format("OpenGL error [0x%08x].", n));
        }
    }

    private static float[] get4x4RotationMatrix(float f, float f2, float f3, float f4) {
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.rotateM(arrf, 0, f, f2, f3, f4);
        return arrf;
    }

    private static float[] get4x4ScalingMatrix(float f, float f2, float f3) {
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.scaleM(arrf, 0, f, f2, f3);
        return arrf;
    }

    private static float[] get4x4TranslationMatrix(float f, float f2, float f3) {
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.translateM(arrf, 0, f, f2, f3);
        return arrf;
    }

    public static boolean isGlErrorOccured() {
        int n = GLES20.glGetError();
        if (n != 0) {
            CameraLogger.e("TraceLog", String.format("OpenGL error [0x%08x].", n));
            return true;
        }
        return false;
    }

    public static boolean loadBitmapFromResourceAs9Patch(Context object, Bitmap bitmap, int n, Rect rect) {
        Object object2 = new BitmapFactory.Options();
        object2.inScaled = false;
        object2.inPreferredConfig = Bitmap.Config.ARGB_8888;
        object2 = BitmapFactory.decodeResource(object.getResources(), n, (BitmapFactory.Options)object2);
        if (object2.getNinePatchChunk() == null) {
            object2.recycle();
            return false;
        }
        object = new NinePatchDrawable(object.getResources(), (Bitmap)object2, object2.getNinePatchChunk(), null, null);
        object.setBounds(rect);
        object.draw(new Canvas(bitmap));
        object2.recycle();
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    static String loadShaderSourceCodesFrom(Context var0, int[] var1_5) {
        var5_6 = new StringBuilder();
        var2_7 = 0;
        var3_8 = null;
        do {
            if (var2_7 >= var1_5.length) return var5_6.toString();
            var4_9 = new BufferedReader(new InputStreamReader(var0.getResources().openRawResource(var1_5[var2_7])));
            var3_8 = var4_9.readLine();
            while (var3_8 != null) {
                var5_6.append((String)var3_8);
                var3_8 = var4_9.readLine();
            }
            if (var4_9 != null) {
                var4_9.close();
            }
            ++var2_7;
            var3_8 = var4_9;
            continue;
            break;
        } while (true);
        catch (IOException var0_1) {}
        ** GOTO lbl-1000
        catch (IOException var0_4) {
            var3_8 = var4_9;
        }
lbl-1000: // 2 sources:
        {
            CameraLogger.e("TraceLog", "Can not load shader file.");
            var0_2.printStackTrace();
            if (var3_8 == null) return var5_6.toString();
            try {
                var3_8.close();
                return var5_6.toString();
            }
            catch (IOException var0_3) {
                var0_3.printStackTrace();
                return var5_6.toString();
            }
        }
    }

    public static void rotate(float[] arrf, float f, float f2, float f3) {
        Matrix.multiplyMM(arrf, 0, ExtendedGlSurfaceView.get4x4RotationMatrix(180.0f * f / 3.1415927f, 1.0f, 0.0f, 0.0f), 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, ExtendedGlSurfaceView.get4x4RotationMatrix(180.0f * f2 / 3.1415927f, 0.0f, 1.0f, 0.0f), 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, ExtendedGlSurfaceView.get4x4RotationMatrix(180.0f * f3 / 3.1415927f, 0.0f, 0.0f, 1.0f), 0, arrf, 0);
    }

    public static void scale(float[] arrf, float f, float f2, float f3) {
        Matrix.multiplyMM(arrf, 0, ExtendedGlSurfaceView.get4x4ScalingMatrix(f, f2, f3), 0, arrf, 0);
    }

    public static void translate(float[] arrf, float f, float f2, float f3) {
        Matrix.multiplyMM(arrf, 0, ExtendedGlSurfaceView.get4x4TranslationMatrix(f, f2, f3), 0, arrf, 0);
    }
}

