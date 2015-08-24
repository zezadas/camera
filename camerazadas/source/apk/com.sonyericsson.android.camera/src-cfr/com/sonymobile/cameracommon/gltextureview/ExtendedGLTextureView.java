/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
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

public class ExtendedGLTextureView
extends GLTextureView {
    public static final float Z_ORDER_STEP_SIZE = 2.0E-5f;
    private RenderingThread mContinuousRenderingThread = null;
    private final boolean mIsContinuousRenderingRequired;
    private final int mRequiredRenderingInterval;

    public ExtendedGLTextureView(Context context) {
        super(context);
        this.mIsContinuousRenderingRequired = false;
        this.mRequiredRenderingInterval = 0;
    }

    public ExtendedGLTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsContinuousRenderingRequired = false;
        this.mRequiredRenderingInterval = 0;
    }

    public ExtendedGLTextureView(Context context, boolean bl, int n) {
        super(context);
        this.mIsContinuousRenderingRequired = bl;
        this.mRequiredRenderingInterval = 1000 / n;
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
    static String loadShaderSourceCodesFrom(Context var0, int var1_4) {
        var2_5 = null;
        var4_7 = null;
        var5_8 = new StringBuilder();
        var0 = new BufferedReader(new InputStreamReader(var0.getResources().openRawResource(var1_4)));
        var2_5 = var0.readLine();
        while (var2_5 != null) {
            var5_8.append((String)var2_5);
            var2_5 = var0.readLine();
        }
        if (var0 == null) return var5_8.toString();
        try {
            var0.close();
            return var5_8.toString();
        }
        catch (IOException var0_1) {
            var0_1.printStackTrace();
            return var5_8.toString();
        }
        catch (IOException var3_9) {
            var0 = var4_7;
            ** GOTO lbl27
            catch (Throwable var3_11) {
                var2_5 = var0;
                var0 = var3_11;
                ** GOTO lbl-1000
            }
            catch (IOException var3_12) {}
lbl27: // 2 sources:
            var2_5 = var0;
            try {
                CameraLogger.e("TraceLog", "Can not load shader file.");
                var2_5 = var0;
                var3_10.printStackTrace();
                if (var0 == null) return var5_8.toString();
            }
            catch (Throwable var0_3) lbl-1000: // 2 sources:
            {
                if (var2_5 == null) throw var0;
                try {
                    var2_5.close();
                }
                catch (IOException var2_6) {
                    var2_6.printStackTrace();
                    throw var0;
                }
                throw var0;
            }
            try {
                var0.close();
                return var5_8.toString();
            }
            catch (IOException var0_2) {
                var0_2.printStackTrace();
                return var5_8.toString();
            }
        }
    }

    public static void rotate(float[] arrf, float f, float f2, float f3) {
        Matrix.multiplyMM(arrf, 0, ExtendedGLTextureView.get4x4RotationMatrix(180.0f * f / 3.1415927f, 1.0f, 0.0f, 0.0f), 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, ExtendedGLTextureView.get4x4RotationMatrix(180.0f * f2 / 3.1415927f, 0.0f, 1.0f, 0.0f), 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, ExtendedGLTextureView.get4x4RotationMatrix(180.0f * f3 / 3.1415927f, 0.0f, 0.0f, 1.0f), 0, arrf, 0);
    }

    public static void scale(float[] arrf, float f, float f2, float f3) {
        Matrix.multiplyMM(arrf, 0, ExtendedGLTextureView.get4x4ScalingMatrix(f, f2, f3), 0, arrf, 0);
    }

    public static void translate(float[] arrf, float f, float f2, float f3) {
        Matrix.multiplyMM(arrf, 0, ExtendedGLTextureView.get4x4TranslationMatrix(f, f2, f3), 0, arrf, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onPause() {
        if (this.mContinuousRenderingThread != null) {
            this.mContinuousRenderingThread.release();
            try {
                this.mContinuousRenderingThread.join(1000);
            }
            catch (Exception var1_1) {
                var1_1.printStackTrace();
            }
            this.mContinuousRenderingThread = null;
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.mIsContinuousRenderingRequired) {
            this.mContinuousRenderingThread = new RenderingThread(this.mRequiredRenderingInterval);
            this.mContinuousRenderingThread.setPriority(10);
            this.mContinuousRenderingThread.start();
        }
    }

    private class RenderingThread
    extends Thread {
        private final int mInterval;
        private boolean mIsAlive;

        public RenderingThread(int n) {
            this.mIsAlive = true;
            this.mInterval = n;
        }

        public void release() {
            this.mIsAlive = false;
        }

        @Override
        public void run() {
            while (this.mIsAlive) {
                long l = SystemClock.elapsedRealtime();
                ExtendedGLTextureView.this.requestRender();
                long l2 = SystemClock.elapsedRealtime();
                l = (long)this.mInterval - (l2 - l);
                if (l <= 0) continue;
                try {
                    Thread.sleep(l);
                }
                catch (Exception var5_3) {
                    var5_3.printStackTrace();
                }
            }
        }
    }

}

