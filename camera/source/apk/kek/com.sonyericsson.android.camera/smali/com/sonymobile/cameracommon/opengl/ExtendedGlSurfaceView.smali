.class public Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "ExtendedGlSurfaceView.java"


# static fields
.field public static final IS_OPENGL_DEBUG:Z = false

.field private static final TARGET_OPEN_GL_ES_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 55
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setDebugFlags(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 71
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setDebugFlags(I)V

    .line 72
    return-void
.end method

.method public static allocByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 125
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "bBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    return-object v0
.end method

.method public static allocFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 109
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 112
    .local v0, "fBuf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    return-object v0
.end method

.method public static bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "textureObject"    # I
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const v4, 0x812f

    const v3, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 281
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 284
    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 288
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 294
    const/16 v0, 0x2802

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 298
    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 304
    const/16 v0, 0x1908

    invoke-static {v1, v2, v0, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    .line 312
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 313
    return-void
.end method

.method public static checkGlErrorWithException()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 81
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 82
    const-string v2, "OpenGL error [0x%08x]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v1}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static get4x4RotationMatrix(FFFF)[F
    .locals 6
    .param p0, "rotDeg"    # F
    .param p1, "vecX"    # F
    .param p2, "vecY"    # F
    .param p3, "vecZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 192
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 195
    .local v0, "rotMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 200
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 208
    return-object v0
.end method

.method private static get4x4ScalingMatrix(FFF)[F
    .locals 3
    .param p0, "scaleX"    # F
    .param p1, "scaleY"    # F
    .param p2, "scaleZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 212
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 215
    .local v0, "scalingMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 220
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 227
    return-object v0
.end method

.method private static get4x4TranslationMatrix(FFF)[F
    .locals 3
    .param p0, "transX"    # F
    .param p1, "transY"    # F
    .param p2, "transZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 174
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 177
    .local v0, "transMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 181
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 188
    return-object v0
.end method

.method public static isGlErrorOccured()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 94
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "TraceLog"

    const-string v4, "OpenGL error [0x%08x]."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static loadBitmapFromResourceAs9Patch(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resId"    # I
    .param p3, "ninePatchBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 330
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 331
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 332
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 343
    .local v2, "rawBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 345
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    :goto_0
    return v1

    .line 350
    :cond_0
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 356
    .local v0, "npd":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 359
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "glslFileId"    # [I

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    array-length v8, p1

    if-ge v4, v8, :cond_2

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 147
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    aget v9, p1, v4

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "line":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_0

    .line 151
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 154
    :cond_0
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_2
    move-object v0, v1

    .line 170
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 158
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 159
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "TraceLog"

    const-string v9, "Can not load shader file."

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    if-eqz v0, :cond_3

    .line 163
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 164
    :catch_1
    move-exception v5

    .line 165
    .local v5, "io_e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "io_e":Ljava/io/IOException;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v3

    goto :goto_3
.end method

.method public static rotate([FFFF)V
    .locals 12
    .param p0, "matrix"    # [F
    .param p1, "rotRadX"    # F
    .param p2, "rotRadY"    # F
    .param p3, "rotRadZ"    # F

    .prologue
    .line 250
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v2

    .line 252
    .local v2, "rotX":[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 253
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p2

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v5

    .line 255
    .local v5, "rotY":[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 256
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p3

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v8

    .line 258
    .local v8, "rotZ":[F
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v10, p0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 259
    return-void
.end method

.method public static scale([FFFF)V
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4ScalingMatrix(FFF)[F

    move-result-object v2

    .local v2, "scaleMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 270
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 271
    return-void
.end method

.method public static translate([FFFF)V
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "transZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4TranslationMatrix(FFF)[F

    move-result-object v2

    .local v2, "transMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 239
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 240
    return-void
.end method
