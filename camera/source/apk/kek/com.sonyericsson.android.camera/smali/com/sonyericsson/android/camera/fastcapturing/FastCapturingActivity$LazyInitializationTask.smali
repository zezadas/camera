.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazyInitializationTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0
    .param p2, "activity"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .line 777
    return-void
.end method

.method private retry()V
    .locals 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 872
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 782
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->isHeadUpDesplayReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->retry()V

    .line 864
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canCurrentStateHandleAsynchronizedTask()Z

    move-result v1

    if-nez v1, :cond_2

    .line 795
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->retry()V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestFinishCameraActivity()V

    .line 805
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->notifyCameraLaunch(Landroid/content/Context;)V

    .line 808
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startFaceIdService(Landroid/app/Activity;)V

    .line 811
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playStartUpNotificationSoundIfRequired()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    .line 813
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 816
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$800()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v1

    if-nez v1, :cond_3

    .line 817
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->loadFastCapturingLaunchSetting()V

    .line 819
    :cond_3
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$800()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v1

    if-nez v1, :cond_4

    .line 820
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$802(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 824
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$800()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 861
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsLazyInitializationRunning:Z
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$902(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Z)Z

    goto :goto_0

    .line 831
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    .line 834
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 836
    .local v0, "latestCachedParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_5

    .line 841
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCameraFront()Z

    move-result v1

    if-nez v1, :cond_5

    .line 844
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isVideoSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 845
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->checkAudioResourceAndShowErrorDialogIfNecessary(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    goto :goto_1

    .line 851
    .end local v0    # "latestCachedParameters":Landroid/hardware/Camera$Parameters;
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPhotoHdrSettings(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 854
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    goto :goto_1

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
