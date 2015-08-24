/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import com.sonymobile.cameracommon.opengl.OpenGlException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private static final String TAG;

    static;

    public ShaderProgramFactory();

    public static int createAlphaMaskedBlurredYuvFrameShaderProgram(Context var0) throws OpenGlException;

    public static int createAlphaMaskedYuvFrameShaderProgram(Context var0) throws OpenGlException;

    public static int createBlurredYuvFrameShaderProgram(Context var0) throws OpenGlException;

    public static int createCopyFrameShaderProgram(Context var0) throws OpenGlException;

    public static int createRgbFrameShaderProgram(Context var0) throws OpenGlException;

    private static int createShaderProgram(Context var0, int[] var1, int[] var2);

    public static int createShaderProgramFromClientApplicationContext(Context var0, int var1, int var2);

    public static int createShaderProgramFromClientApplicationContext(Context var0, int[] var1, int[] var2);

    public static int createSimpleFrameShaderProgram(Context var0) throws OpenGlException;

    public static int createVertexAlphYuvFrameShaderProgram(Context var0) throws OpenGlException;

    public static int createYuvFrameShaderProgram(Context var0) throws OpenGlException;

    public static void deleteShaderProgram(int var0);
}

