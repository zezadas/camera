.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoFastestCamcordTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0

    .prologue
    .line 4674
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    .prologue
    .line 4674
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4680
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4682
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4735
    :cond_0
    :goto_0
    return-void

    .line 4693
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4697
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInRecordingStartingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4698
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$6100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startRecording(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;)V

    .line 4702
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4704
    :catch_0
    move-exception v0

    .line 4705
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
