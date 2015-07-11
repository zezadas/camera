.class Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;
.super Ljava/lang/Object;
.source "SplitLayoutBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayFrameBaseFactory"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

.field private mShader:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 808
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0, p1, v2}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    .line 809
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createRgbFrameShaderProgram(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mShader:I

    .line 810
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mShader:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->setShaderProgram(I)V

    .line 811
    return-void
.end method

.method public obtain()Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->updataTexture(Landroid/graphics/Bitmap;)V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mBitmap:Landroid/graphics/Bitmap;

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->release()V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    .line 820
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mShader:I

    if-eqz v0, :cond_1

    .line 821
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 822
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mShader:I

    .line 824
    :cond_1
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->mBitmap:Landroid/graphics/Bitmap;

    .line 837
    return-void
.end method
