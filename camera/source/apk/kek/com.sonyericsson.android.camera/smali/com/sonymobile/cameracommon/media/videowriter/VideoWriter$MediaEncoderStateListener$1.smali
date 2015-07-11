.class Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;
.super Ljava/lang/Object;
.source "VideoWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->onStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;->this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;->this$1:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$000(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;->onStarted()V

    .line 270
    return-void
.end method
