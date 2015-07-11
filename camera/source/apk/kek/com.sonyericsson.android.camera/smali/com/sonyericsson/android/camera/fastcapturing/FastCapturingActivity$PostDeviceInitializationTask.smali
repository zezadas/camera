.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;
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
    name = "PostDeviceInitializationTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 1
    .param p2, "activity"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .line 907
    const/4 v0, 0x1

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsLazyInitializationRunning:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$902(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Z)Z

    .line 908
    return-void
.end method

.method private applySettingsForFastVideo()V
    .locals 3

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->prepareAdditionalFeatures(ILcom/sonyericsson/android/camera/ExtendedActivity;)V

    .line 1020
    return-void
.end method

.method private retry()V
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 1032
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 913
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$800()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v1

    if-nez v1, :cond_1

    .line 918
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->retry()V

    .line 1013
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 927
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->retry()V

    goto :goto_0

    .line 934
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 937
    .local v0, "latestCachedParameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canCurrentStateHandleAsynchronizedTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 939
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$800()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 993
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 995
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$1200(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 998
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 947
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->prepareAdditionalFeatures(ILcom/sonyericsson/android/camera/ExtendedActivity;)V

    .line 952
    if-eqz v0, :cond_4

    .line 959
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 961
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->applyCameraLightSetting(I)V

    .line 970
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 963
    :cond_7
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isPhotoLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 976
    :pswitch_1
    if-eqz v0, :cond_8

    .line 977
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 979
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->applyCameraLightSetting(I)V

    .line 984
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 987
    if-eqz v0, :cond_4

    .line 988
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->applySettingsForFastVideo()V

    goto/16 :goto_1

    .line 1008
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;->retry()V

    goto/16 :goto_0

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
