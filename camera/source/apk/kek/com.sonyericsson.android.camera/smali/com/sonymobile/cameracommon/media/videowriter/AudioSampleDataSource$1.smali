.class Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;
.super Ljava/lang/Object;
.source "AudioSampleDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->requestToReadSampleData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;

.field final synthetic val$eos:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;Z)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;

    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;->val$eos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;

    iget-boolean v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;->val$eos:Z

    # invokes: Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->readSampleData(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->access$000(Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalStateException;
    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occurred. Maybe camera server is dead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
