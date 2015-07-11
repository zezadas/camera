.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;
.super Ljava/lang/Object;
.source "TextureContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawFrameTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 131
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->lock()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->clear()V

    .line 137
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v0

    .line 140
    .local v0, "animation":Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    if-eqz v0, :cond_3

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;->draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 148
    .local v1, "isAnimationFinished":Z
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->unlock()V

    .line 150
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->stop()V

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$700(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    .end local v1    # "isAnimationFinished":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 145
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "isAnimationFinished":Z
    goto :goto_1
.end method
