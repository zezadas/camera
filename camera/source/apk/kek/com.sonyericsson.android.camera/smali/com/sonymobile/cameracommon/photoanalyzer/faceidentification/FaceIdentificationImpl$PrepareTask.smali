.class Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;
.super Ljava/lang/Object;
.source "FaceIdentificationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRemoteFaceRecognition:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$000(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsReleased:Z
    invoke-static {v1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$100(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    return-void

    .line 166
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 169
    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceIdentification.PrepareTask.run():[Interrupted]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
