.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;
.super Ljava/lang/Object;
.source "GLSurfaceContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupRelatedToSurfaceSizeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getHeight()I

    move-result v2

    # invokes: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setupDynamicConfig(II)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;II)V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # invokes: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->createAllShaders()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$700(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    new-instance v1, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    # setter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$302(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setColor(FFFF)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$800(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setShaderProgram(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setVisibility(Z)V

    .line 193
    :cond_0
    return-void
.end method
