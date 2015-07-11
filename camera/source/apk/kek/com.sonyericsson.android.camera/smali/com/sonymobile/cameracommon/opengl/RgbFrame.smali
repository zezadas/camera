.class public Lcom/sonymobile/cameracommon/opengl/RgbFrame;
.super Lcom/sonymobile/cameracommon/opengl/FrameBase;
.source "RgbFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/RgbFrame$1;,
        Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_0:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mNinePatchTextureRect:Landroid/graphics/Rect;

.field private final mResId:I

.field private mTexture:[I

.field private final mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NORMAL_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 64
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 65
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 68
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeTextures()V

    .line 69
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "resId"    # I
    .param p4, "textureRect"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NINE_PATCH_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 88
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 89
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 92
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeTextures()V

    .line 93
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_BITMAP:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 111
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 113
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeTextures()V

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "texture"    # [I
    .param p4, "textureRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 134
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 136
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 138
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 140
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 141
    return-void
.end method

.method private finalizeTextures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 349
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aput v2, v0, v2

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 355
    return-void
.end method

.method private initializeTextures()V
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 268
    return-void
.end method

.method private loadNinePatchTexture()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 315
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 316
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 317
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 318
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    invoke-static {v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    .local v2, "rawBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 330
    .local v0, "npd":Landroid/graphics/drawable/NinePatchDrawable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 333
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 337
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v1, v1, v8

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 344
    return-void
.end method

.method private loadNormalTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 302
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 303
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 304
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 310
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 311
    return-void
.end method

.method private loadPreLoadedTexture()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 297
    :cond_0
    return-void
.end method

.method private loadTexture()V
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$1;->$SwitchMap$com$sonymobile$cameracommon$opengl$RgbFrame$Type:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 273
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadPreLoadedTexture()V

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadNormalTexture()V

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadNinePatchTexture()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected doRender()V
    .locals 10

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mVertexBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 204
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 211
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 214
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexCoordBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 215
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 222
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 225
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 226
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 228
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v1, "uTextureRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    .line 235
    .local v9, "textureRgb":I
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 238
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    .line 240
    .local v8, "alpha":I
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 243
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 244
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 247
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 248
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 250
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 258
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 259
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    return-void
.end method

.method public getOnScreenSize()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 169
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->release()V

    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->finalizeShaderProgram()V

    .line 195
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    if-eq v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->finalizeTextures()V

    .line 198
    :cond_0
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0
    .param p1, "shaderProgram"    # I

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->setShaderProgram(I)V

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 182
    return-void
.end method

.method public updataTexture(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method
