.class public Lcom/sonymobile/cameracommon/opengl/TextFrame;
.super Lcom/sonymobile/cameracommon/opengl/FrameBase;
.source "TextFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/TextFrame$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_0:I


# instance fields
.field private mTextBitmap:Landroid/graphics/Bitmap;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextCanvas:Landroid/graphics/Canvas;

.field private mTextPaint:Landroid/graphics/Paint;

.field private final mTexture:[I

.field private mTextureRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "textureRect"    # Landroid/graphics/Rect;
    .param p4, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    .line 30
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    .line 31
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    .line 33
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    .line 54
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    .line 55
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->initializeTextures()V

    .line 59
    return-void
.end method

.method private finalizeTextures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    aput v2, v0, v2

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    :cond_1
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    .line 242
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    .line 243
    return-void
.end method

.method private initializeTextures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 222
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    .line 223
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 225
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->reloadBitmapToTexture()V

    .line 226
    return-void
.end method

.method private reloadBitmapToTexture()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 230
    return-void
.end method


# virtual methods
.method protected doRender()V
    .locals 10

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mVertexBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 152
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 159
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 162
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexCoordBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 163
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 170
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 173
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 174
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 176
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v1, "uTextureRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    .line 183
    .local v9, "textureRgb":I
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 186
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    .line 188
    .local v8, "alpha":I
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mAlpha:F

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 191
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 192
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 195
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 196
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 198
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 206
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 207
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->release()V

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->finalizeShaderProgram()V

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->finalizeTextures()V

    .line 146
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 74
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "anchorX":F
    sget-object v4, Lcom/sonymobile/cameracommon/opengl/TextFrame$1;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 95
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, p1, v8, v5, v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 96
    .local v1, "firstLineLength":I
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 98
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    :goto_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->reloadBitmapToTexture()V

    .line 132
    return-void

    .line 79
    .end local v1    # "firstLineLength":I
    :pswitch_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 80
    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 84
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 100
    .restart local v1    # "firstLineLength":I
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, p1, v8, v5, v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    goto :goto_1

    .line 113
    :cond_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "line1":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "line2":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
