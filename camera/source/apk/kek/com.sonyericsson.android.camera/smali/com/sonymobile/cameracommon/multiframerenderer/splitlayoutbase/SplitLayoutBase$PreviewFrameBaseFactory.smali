.class Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
.super Ljava/lang/Object;
.source "SplitLayoutBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameBaseFactory"
.end annotation


# instance fields
.field private mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 517
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 518
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I
    invoke-static {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->access$100(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createYuvFrameShaderProgram(Landroid/content/Context;)I

    move-result v2

    # setter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I
    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->access$102(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;I)I

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I
    invoke-static {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->access$100(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 523
    return-void
.end method

.method public obtain()Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 531
    :cond_0
    return-void
.end method
