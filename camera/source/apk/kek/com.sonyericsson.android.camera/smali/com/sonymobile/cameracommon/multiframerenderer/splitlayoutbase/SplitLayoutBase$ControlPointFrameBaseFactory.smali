.class Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;
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
    name = "ControlPointFrameBaseFactory"
.end annotation


# instance fields
.field private mControlPointResourceId:I

.field private mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

.field private mShader:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "controlPointResourceId"    # I

    .prologue
    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mControlPointResourceId:I

    .line 922
    return-void
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 926
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 927
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mControlPointResourceId:I

    invoke-direct {v1, v0, p1, v2}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    .line 928
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createRgbFrameShaderProgram(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mShader:I

    .line 929
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mShader:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->setShaderProgram(I)V

    .line 930
    return-void
.end method

.method public obtain()Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->release()V

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    .line 939
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mShader:I

    if-eqz v0, :cond_1

    .line 940
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->mShader:I

    .line 943
    :cond_1
    return-void
.end method
