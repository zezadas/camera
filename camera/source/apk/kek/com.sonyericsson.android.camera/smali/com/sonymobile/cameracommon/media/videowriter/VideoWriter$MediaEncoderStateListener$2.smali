.class Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;
.super Ljava/lang/Object;
.source "VideoWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->onFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;Z)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;->this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;->this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$302(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;Z)Z

    .line 288
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;->this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$000(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;->val$result:Z

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;->onFinished(Z)V

    .line 289
    return-void
.end method
