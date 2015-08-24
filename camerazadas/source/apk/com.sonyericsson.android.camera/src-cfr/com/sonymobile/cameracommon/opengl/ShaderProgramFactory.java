/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.OpenGlException;

public class ShaderProgramFactory {
    public static final String GLSL_FIELD_ID_ALPHA_MASK_TEXTURE = "uAlphaMaskTexture";
    public static final String GLSL_FIELD_ID_ATTRIB_TEXCOORD = "aTexCoord";
    public static final String GLSL_FIELD_ID_ATTRIB_VERTEX = "aVertex";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_BLUR_SPREAD = "uBlurSpread";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_CENTER_WEIGHT = "uCenterWeight";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_LOD = "uLod";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_SPREAD_OFFSET = "uSpreadOffset";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_HEIGHT = "uTextureHeight";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_WIDTH = "uTextureWidth";
    public static final String GLSL_FIELD_ID_MASK_TEXTURE_COORD = "aMaskTexCoord";
    public static final String GLSL_FIELD_ID_SAMPLER2D_TEXTURE = "sTexture";
    public static final String GLSL_FIELD_ID_SIMPLE_COLOR = "simpleColor";
    public static final String GLSL_FIELD_ID_TEXTURE_COORD = "texCoord";
    public static final String GLSL_FIELD_ID_TEXTURE_RGB = "uTextureRgb";
    public static final String GLSL_FIELD_ID_TEXTURE_U = "textureU";
    public static final String GLSL_FIELD_ID_TEXTURE_V = "textureV";
    public static final String GLSL_FIELD_ID_TEXTURE_VU = "textureVu";
    public static final String GLSL_FIELD_ID_TEXTURE_Y = "textureY";
    public static final String GLSL_FIELD_ID_UNIFORM_ALPHA = "uAlpha";
    public static final String GLSL_FIELD_ID_UNIFORM_MVPMATRIX = "uMvpMatrix";
    public static final String GLSL_FIELD_ID_VERTEX = "vertex";
    public static final String GLSL_FIELD_ID_VERTEX_ALPHA = "vertexAlpha";
    public static final String GLSL_FIELD_ID_VERTEX_MVP_MATRIX = "mvpMatrix";
    private static final String TAG = ShaderProgramFactory.class.getSimpleName();

    public static int createAlphaMaskedBlurredYuvFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_alpha_masked_blurred_yuv_frame_vertex;
        int n2 = R.raw.opengl_alpha_masked_blurred_yuv_frame_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createAlphaMaskedYuvFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_alpha_masked_yuv_frame_vertex;
        int n2 = R.raw.opengl_alpha_masked_yuv_frame_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createBlurredYuvFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_blurred_yuv_frame_vertex;
        int n2 = R.raw.opengl_blurred_yuv_frame_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createCopyFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_copyframe_vertex;
        int n2 = R.raw.opengl_copyframe_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createRgbFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_rgb_frame_vertex;
        int n2 = R.raw.opengl_rgb_frame_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private static int createShaderProgram(Context var0, int[] var1_2, int[] var2_3) {
        var6_4 = 0;
        var7_5 = 0;
        var8_6 = 0;
        var9_7 = new int[1];
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        try {
            var1_2 = ExtendedGlSurfaceView.loadShaderSourceCodesFrom((Context)var0, (int[])var1_2);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            var7_5 = GLES20.glCreateShader(35633);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            ExtendedGlSurfaceView.checkGlErrorWithException();
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            GLES20.glShaderSource(var7_5, (String)var1_2);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            ExtendedGlSurfaceView.checkGlErrorWithException();
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            GLES20.glCompileShader(var7_5);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            ExtendedGlSurfaceView.checkGlErrorWithException();
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            GLES20.glGetShaderiv(var7_5, 35713, var9_7, 0);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            ExtendedGlSurfaceView.checkGlErrorWithException();
        }
        catch (OpenGlException var0_1) {
            var0_1.printStackTrace();
            if (var5_10 != 0) {
                GLES20.glDeleteShader(var5_10);
            }
            if (var3_8 != 0) {
                GLES20.glDeleteShader(var3_8);
            }
            ShaderProgramFactory.deleteShaderProgram(var4_9);
            throw var0_1;
        }
        if (var9_7[0] == 0) {
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            CameraLogger.e(ShaderProgramFactory.TAG, "ShaderProgramFactory.createShaderProgram():[VS Compile Error]");
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            var0 = GLES20.glGetShaderInfoLog(var7_5);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            CameraLogger.e(ShaderProgramFactory.TAG, (String)var0);
            var3_8 = var8_6;
            var4_9 = var6_4;
            var5_10 = var7_5;
            throw new OpenGlException("ShaderProgramFactory.createShaderProgram():[VS Compile Error]");
        }
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        var0 = ExtendedGlSurfaceView.loadShaderSourceCodesFrom((Context)var0, var2_3);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        var3_8 = var8_6 = GLES20.glCreateShader(35632);
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glShaderSource(var8_6, (String)var0);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glCompileShader(var8_6);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glGetShaderiv(var8_6, 35713, var9_7, 0);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        if (var9_7[0] != 0) ** GOTO lbl122
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        CameraLogger.e(ShaderProgramFactory.TAG, "ShaderProgramFactory.createShaderProgram():[FS Compile Error]");
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        var0 = GLES20.glGetShaderInfoLog(var8_6);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        CameraLogger.e(ShaderProgramFactory.TAG, (String)var0);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        throw new OpenGlException("ShaderProgramFactory.createShaderProgram():[FS Compile Error]");
lbl122: // 1 sources:
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        var6_4 = GLES20.glCreateProgram();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glAttachShader(var6_4, var7_5);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glAttachShader(var6_4, var8_6);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glDeleteShader(var7_5);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glDeleteShader(var8_6);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        GLES20.glLinkProgram(var6_4);
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        ExtendedGlSurfaceView.checkGlErrorWithException();
        if (var9_7[0] != 0) return var6_4;
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        CameraLogger.e(ShaderProgramFactory.TAG, "ShaderProgramFactory.createShaderProgram():[Program link Error]");
        var3_8 = var8_6;
        var4_9 = var6_4;
        var5_10 = var7_5;
        throw new OpenGlException("ShaderProgramFactory.createShaderProgram():[Program link Error]");
    }

    public static int createShaderProgramFromClientApplicationContext(Context context, int n, int n2) {
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createShaderProgramFromClientApplicationContext(Context context, int[] arrn, int[] arrn2) {
        return ShaderProgramFactory.createShaderProgram(context, arrn, arrn2);
    }

    public static int createSimpleFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_simpleframe_vertex;
        int n2 = R.raw.opengl_simpleframe_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createVertexAlphYuvFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_vertex_alpha_yuv_frame_vertex;
        int n2 = R.raw.opengl_vertex_alpha_yuv_frame_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static int createYuvFrameShaderProgram(Context context) throws OpenGlException {
        int n = R.raw.opengl_yuv_frame_vertex;
        int n2 = R.raw.opengl_yuv_frame_fragment;
        return ShaderProgramFactory.createShaderProgram(context, new int[]{n}, new int[]{n2});
    }

    public static void deleteShaderProgram(int n) {
        if (n != 0) {
            GLES20.glDeleteProgram(n);
            if (ExtendedGlSurfaceView.isGlErrorOccured()) {
                CameraLogger.e(TAG, "deleteShaderProgram():[Delete Program Error]");
            }
        }
    }
}

