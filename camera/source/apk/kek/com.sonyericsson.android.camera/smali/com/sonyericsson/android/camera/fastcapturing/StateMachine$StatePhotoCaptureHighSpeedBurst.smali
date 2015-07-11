.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCaptureHighSpeedBurst"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst$FinishHighSpeedBurstTask;
    }
.end annotation


# instance fields
.field private final mIsCalledByKeyEvent:Z

.field private mWaitingForAfDone:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V
    .locals 1
    .param p2, "waitingForAfDone"    # Z
    .param p3, "isCalledByKeyEvent"    # Z

    .prologue
    .line 2994
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2995
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_HI_SPEED_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 2997
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->mWaitingForAfDone:Z

    .line 2998
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->mIsCalledByKeyEvent:Z

    .line 3000
    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->clearBurst()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3002
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V

    .line 3003
    return-void
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;

    .prologue
    .line 2986
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->finishBurst()V

    return-void
.end method

.method private finishBurst()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3098
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->fadeoutCounter()V

    .line 3100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopHighSpeedBurst()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$102(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3105
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setStopBurstRequest()V
    .locals 2

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$102(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z

    .line 3132
    return-void
.end method

.method private setStopBurstRequest(Z)V
    .locals 2
    .param p1, "isStoppedByKeyEvent"    # Z

    .prologue
    .line 3124
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->mIsCalledByKeyEvent:Z

    if-ne v0, p1, :cond_0

    .line 3125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$102(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z

    .line 3126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->finishBurst()V

    .line 3128
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3089
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->setStopBurstRequest(Z)V

    .line 3090
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3084
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->setStopBurstRequest(Z)V

    .line 3085
    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 3007
    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 3008
    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    if-ne v0, v1, :cond_0

    .line 3009
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStandbyDialog;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStandbyDialog;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3012
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->notifyStateBlockedToWearable()V

    .line 3013
    return-void
.end method

.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3079
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->setStopBurstRequest(Z)V

    .line 3080
    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 3017
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->mWaitingForAfDone:Z

    if-nez v0, :cond_0

    .line 3030
    :goto_0
    return-void

    .line 3023
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestPlayAutoFocusSuccessSound(Z)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 3026
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDone;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStartHighSpeedBurst(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V
    invoke-static {v0, p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V

    .line 3029
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->mWaitingForAfDone:Z

    goto :goto_0
.end method

.method public varargs handleOnBurstGroupStoreCompleted([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 3071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->getUpdator()Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->commitBulkInsert()Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 3073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onBurstStoreComplete(Z)V

    .line 3074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3075
    return-void
.end method

.method public varargs handleOnBurstShutterDone([Ljava/lang/Object;)V
    .locals 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 3036
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 3038
    aget-object v0, p1, v5

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;

    .line 3039
    .local v0, "result":Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;
    if-nez v0, :cond_1

    .line 3050
    :cond_0
    :goto_0
    return-void

    .line 3043
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget v2, v0, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mPictureCount:I

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$202(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;I)I

    .line 3044
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3047
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3048
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst$FinishHighSpeedBurstTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst$FinishHighSpeedBurstTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public varargs handleOnBurstStoreCompleted([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 3061
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3062
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->finishBurst()V

    .line 3067
    :goto_0
    return-void

    .line 3065
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    goto :goto_0
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopHighSpeedBurst()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    .line 3120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3121
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3094
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 3095
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;->setStopBurstRequest()V

    .line 3115
    return-void
.end method
