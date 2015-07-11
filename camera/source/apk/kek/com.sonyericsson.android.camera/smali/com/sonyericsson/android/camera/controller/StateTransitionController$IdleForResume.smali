.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleForResume"
.end annotation


# instance fields
.field private mSetupFinished:Z

.field private mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

.field private mSurfacePrepared:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 616
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method

.method private checkCondition()V
    .locals 2

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfacePrepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSetupFinished:Z

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->setPreviewDisplay(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .line 725
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    :cond_1
    return-void
.end method

.method private sendGoogleAnalyticsViewEvent()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 739
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchConditions()Lcom/sonyericsson/android/camera/LaunchConditions;

    move-result-object v2

    .line 740
    .local v2, "launchConditions":Lcom/sonyericsson/android/camera/LaunchConditions;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v0

    .line 741
    .local v0, "extraOperation":Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
    sget-object v4, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 744
    .local v1, "isFastCapturingSettins":Z
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->clear()V

    .line 745
    if-eqz v1, :cond_1

    .line 746
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->FAST_CAPTURING_SETTINGS:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 754
    :goto_1
    return-void

    .end local v1    # "isFastCapturingSettins":Z
    :cond_0
    move v1, v3

    .line 741
    goto :goto_0

    .line 750
    .restart local v1    # "isFastCapturingSettins":Z
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendView(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto :goto_1
.end method


# virtual methods
.method public entry()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;->entry()V

    .line 628
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfacePrepared:Z

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .line 630
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSetupFinished:Z

    .line 631
    return-void
.end method

.method public handleCameraSetupFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearResumeDeviceTask()V

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSetupFinished:Z

    .line 641
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->checkCondition()V

    .line 644
    return-void
.end method

.method public handleLaunch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 648
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 650
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 651
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 656
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->sendGoogleAnalyticsViewEvent()V

    .line 658
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launch()V

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->onCameraReadyToUse()V

    .line 664
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startSetupCapturingModeSelectorTask(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 667
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 668
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 670
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 671
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 675
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 677
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 681
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfacePrepared:Z

    .line 682
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isOpenCameraDeviceTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isSetupCameraDeviceTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->setPreviewDisplay(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->mSurfaceHolder:Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->checkCondition()V

    .line 698
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 699
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 701
    return-void
.end method
