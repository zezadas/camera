.class public Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;
.super Ljava/lang/Object;
.source "ShaderProgramFactory.java"


# static fields
.field public static final GLSL_FIELD_ID_ALPHA_MASK_TEXTURE:Ljava/lang/String; = "uAlphaMaskTexture"

.field public static final GLSL_FIELD_ID_ATTRIB_TEXCOORD:Ljava/lang/String; = "aTexCoord"

.field public static final GLSL_FIELD_ID_ATTRIB_VERTEX:Ljava/lang/String; = "aVertex"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_BLUR_SPREAD:Ljava/lang/String; = "uBlurSpread"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_CENTER_WEIGHT:Ljava/lang/String; = "uCenterWeight"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_LOD:Ljava/lang/String; = "uLod"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_SPREAD_OFFSET:Ljava/lang/String; = "uSpreadOffset"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_HEIGHT:Ljava/lang/String; = "uTextureHeight"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_WIDTH:Ljava/lang/String; = "uTextureWidth"

.field public static final GLSL_FIELD_ID_MASK_TEXTURE_COORD:Ljava/lang/String; = "aMaskTexCoord"

.field public static final GLSL_FIELD_ID_SAMPLER2D_TEXTURE:Ljava/lang/String; = "sTexture"

.field public static final GLSL_FIELD_ID_SIMPLE_COLOR:Ljava/lang/String; = "simpleColor"

.field public static final GLSL_FIELD_ID_TEXTURE_COORD:Ljava/lang/String; = "texCoord"

.field public static final GLSL_FIELD_ID_TEXTURE_RGB:Ljava/lang/String; = "uTextureRgb"

.field public static final GLSL_FIELD_ID_TEXTURE_U:Ljava/lang/String; = "textureU"

.field public static final GLSL_FIELD_ID_TEXTURE_V:Ljava/lang/String; = "textureV"

.field public static final GLSL_FIELD_ID_TEXTURE_VU:Ljava/lang/String; = "textureVu"

.field public static final GLSL_FIELD_ID_TEXTURE_Y:Ljava/lang/String; = "textureY"

.field public static final GLSL_FIELD_ID_UNIFORM_ALPHA:Ljava/lang/String; = "uAlpha"

.field public static final GLSL_FIELD_ID_UNIFORM_MVPMATRIX:Ljava/lang/String; = "uMvpMatrix"

.field public static final GLSL_FIELD_ID_VERTEX:Ljava/lang/String; = "vertex"

.field public static final GLSL_FIELD_ID_VERTEX_ALPHA:Ljava/lang/String; = "vertexAlpha"

.field public static final GLSL_FIELD_ID_VERTEX_MVP_MATRIX:Ljava/lang/String; = "mvpMatrix"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlphaMaskedBlurredYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_blurred_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_blurred_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 238
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createAlphaMaskedYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 214
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createBlurredYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_blurred_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_blurred_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 190
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createCopyFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_copyframe_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_copyframe_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 167
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createRgbFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_rgb_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_rgb_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 120
    .local v0, "shaderProgram":I
    return v0
.end method

.method private static createShaderProgram(Landroid/content/Context;[I[I)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexShaderFileId"    # [I
    .param p2, "fragmentShaderFileId"    # [I

    .prologue
    .line 281
    const/4 v6, 0x0

    .line 284
    .local v6, "shaderProgram":I
    const/4 v7, 0x0

    .line 285
    .local v7, "vertexShader":I
    const/4 v2, 0x0

    .line 288
    .local v2, "fragmentShader":I
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 292
    .local v0, "compileStatusChecker":[I
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "vertexShaderSrc":Ljava/lang/String;
    const v9, 0x8b31

    invoke-static {v9}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v7

    .line 297
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 300
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 305
    invoke-static {v7}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 307
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 310
    const v9, 0x8b81

    const/4 v10, 0x0

    invoke-static {v7, v9, v0, v10}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 316
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 319
    const/4 v9, 0x0

    aget v9, v0, v9

    if-nez v9, :cond_2

    .line 320
    const-string v4, "ShaderProgramFactory.createShaderProgram():[VS Compile Error]"

    .line 321
    .local v4, "message":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v7}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "shaderMessage":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v9, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v9, v4}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "shaderMessage":Ljava/lang/String;
    .end local v8    # "vertexShaderSrc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;->printStackTrace()V

    .line 401
    if-eqz v7, :cond_0

    .line 402
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 404
    :cond_0
    if-eqz v2, :cond_1

    .line 405
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 408
    :cond_1
    invoke-static {v6}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 409
    const/4 v6, 0x0

    .line 411
    throw v1

    .line 328
    .end local v1    # "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    .restart local v8    # "vertexShaderSrc":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p0, p2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "fragmentShaderSrc":Ljava/lang/String;
    const v9, 0x8b30

    invoke-static {v9}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 333
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 336
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 341
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 343
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 346
    const v9, 0x8b81

    const/4 v10, 0x0

    invoke-static {v2, v9, v0, v10}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 352
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 355
    const/4 v9, 0x0

    aget v9, v0, v9

    if-nez v9, :cond_3

    .line 356
    const-string v4, "ShaderProgramFactory.createShaderProgram():[FS Compile Error]"

    .line 357
    .restart local v4    # "message":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    .restart local v5    # "shaderMessage":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v9, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v9, v4}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 364
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "shaderMessage":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v6

    .line 367
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 369
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 372
    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 374
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 377
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 379
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 382
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 384
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 387
    invoke-static {v6}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 389
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 392
    const/4 v9, 0x0

    aget v9, v0, v9

    if-nez v9, :cond_4

    .line 393
    const-string v4, "ShaderProgramFactory.createShaderProgram():[Program link Error]"

    .line 394
    .restart local v4    # "message":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v9, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v9, v4}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    return v6
.end method

.method public static createShaderProgramFromClientApplicationContext(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexShaderFileId"    # I
    .param p2, "fragmentShaderFileId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    new-array v0, v1, [I

    aput p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    return v0
.end method

.method public static createShaderProgramFromClientApplicationContext(Landroid/content/Context;[I[I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexShaderFileId"    # [I
    .param p2, "fragmentShaderFileId"    # [I

    .prologue
    .line 270
    invoke-static {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    return v0
.end method

.method public static createSimpleFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_simpleframe_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_simpleframe_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 143
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createVertexAlphYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_vertex_alpha_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_vertex_alpha_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 97
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 73
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static deleteShaderProgram(I)V
    .locals 2
    .param p0, "shaderProgram"    # I

    .prologue
    .line 427
    if-eqz p0, :cond_0

    .line 428
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 429
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    const-string v1, "deleteShaderProgram():[Delete Program Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    return-void
.end method
