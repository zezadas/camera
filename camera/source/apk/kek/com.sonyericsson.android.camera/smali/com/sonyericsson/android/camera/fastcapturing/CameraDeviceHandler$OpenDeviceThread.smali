.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;
.super Ljava/lang/Thread;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenDeviceThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenDeviceThread"


# instance fields
.field private volatile mIsSuccess:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 1

    .prologue
    .line 570
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->mIsSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->mIsSuccess:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 582
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v4, v9}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 589
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->openCamera()Z
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$402(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 597
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_2

    .line 598
    const-string v4, "OpenDeviceThread"

    const-string v5, "run: mLatestCachedParameters is null."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    move-result-object v4

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->join(J)V

    .line 610
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 611
    const-string v4, "OpenDeviceThread"

    const-string v5, "LoadSettingsThread Timeouted."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v4, "OpenDeviceThread"

    const-string v5, "LoadSettingsThread is Cancelled."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 617
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "OpenDeviceThread"

    const-string v5, "LoadSettingsThread is Interrupted."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 627
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v5

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraTypeFrom(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)I
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$800(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCurrentSettingsToParameters(ILandroid/hardware/Camera$Parameters;)V
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V

    .line 634
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f060000

    const v6, 0x7f060001

    iget-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V

    .line 643
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 647
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 648
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 653
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 655
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 656
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    invoke-static {v4, v8}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1202(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Z)Z

    goto/16 :goto_0

    .line 666
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v4

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isPreProcessRequiredFrom(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Z
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 667
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->preScan()V

    .line 672
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->selectDefaultCameraLightSettingsIfSharedPreferencesIsEmpty(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 675
    iput-boolean v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->mIsSuccess:Z

    .line 677
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    const/4 v5, 0x2

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1602(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;I)I

    .line 690
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v4, v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 693
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 694
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    const-string v4, "sony-vs"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "vsParam":Ljava/lang/String;
    const-string v4, "sony-video-nr"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "nrParam":Ljava/lang/String;
    new-instance v4, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1800(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto/16 :goto_0
.end method
