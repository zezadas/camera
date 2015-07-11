.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCaptureBestEffortBurst"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoCapture"


# instance fields
.field private final mIsCalledByKeyEvent:Z

.field private mIsCaptureDone:Z

.field private mIsMemoryErrorOccured:Z

.field private mIsRequestStoreDone:Z

.field private final mPathBuilder:Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;

.field private mWaitingForAfDone:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V
    .locals 3
    .param p2, "waitingForAfDone"    # Z
    .param p3, "isCalledByKeyEvent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2835
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2825
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsMemoryErrorOccured:Z

    .line 2828
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsCaptureDone:Z

    .line 2829
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsRequestStoreDone:Z

    .line 2836
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 2838
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mWaitingForAfDone:Z

    .line 2839
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsCalledByKeyEvent:Z

    .line 2841
    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->clearBurst()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2845
    :try_start_0
    new-instance v1, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    .local v1, "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    :goto_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mPathBuilder:Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;

    .line 2853
    iget-object v2, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V

    .line 2854
    return-void

    .line 2846
    .end local v1    # "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .restart local v1    # "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    goto :goto_0
.end method

.method private setStopBurstRequest(Z)V
    .locals 2
    .param p1, "isStoppedByKeyEvent"    # Z

    .prologue
    .line 2980
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsCalledByKeyEvent:Z

    if-ne v0, p1, :cond_0

    .line 2981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$102(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z

    .line 2983
    :cond_0
    return-void
.end method

.method private takeNextPicture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2931
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsCaptureDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsRequestStoreDone:Z

    if-eqz v0, :cond_0

    .line 2935
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsMemoryErrorOccured:Z

    if-eqz v0, :cond_1

    .line 2936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopBestEffortBurst()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2943
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onBurstStoreComplete(Z)V

    .line 2946
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2947
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2966
    :cond_0
    :goto_0
    return-void

    .line 2951
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->canPushStoreTask()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2953
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopBestEffortBurst()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2956
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStore;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStore;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2961
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureBestEffortBurst(Z)V
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2963
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsCaptureDone:Z

    .line 2964
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsRequestStoreDone:Z

    goto :goto_0
.end method


# virtual methods
.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->setStopBurstRequest(Z)V

    .line 2869
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->setStopBurstRequest(Z)V

    .line 2864
    return-void
.end method

.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2858
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->setStopBurstRequest(Z)V

    .line 2859
    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2878
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mWaitingForAfDone:Z

    if-nez v0, :cond_0

    .line 2892
    :goto_0
    return-void

    .line 2884
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestPlayAutoFocusSuccessSound(Z)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2887
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDone;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2888
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureBestEffortBurst(Z)V
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2891
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mWaitingForAfDone:Z

    goto :goto_0
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2900
    return-void
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsRequestStoreDone:Z

    .line 2927
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->takeNextPicture()V

    .line 2928
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2909
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mPathBuilder:Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;

    if-eqz v2, :cond_0

    .line 2910
    const/4 v2, 0x0

    aget-object v1, p1, v2

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 2911
    .local v1, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mPathBuilder:Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;->getNextFilePathToStorePicture()Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 2913
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setExtraOutput(Landroid/net/Uri;)V

    .line 2914
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 2917
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsCaptureDone:Z

    .line 2919
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->takeNextPicture()V

    .line 2920
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopBestEffortBurst()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2976
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2977
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2873
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 2874
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;->mIsMemoryErrorOccured:Z

    .line 2971
    return-void
.end method
