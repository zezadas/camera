.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State$ReTrySetupHeadUpDisplayTask;
    }
.end annotation


# instance fields
.field protected mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1

    .prologue
    .line 561
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 563
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    return-object v0
.end method

.method public varargs handleCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 901
    return-void
.end method

.method public varargs handleCancelTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 826
    return-void
.end method

.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 838
    return-void
.end method

.method public varargs handleCaptureButtonLongPress([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 842
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 834
    return-void
.end method

.method public varargs handleCaptureButtonTouch([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 830
    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 923
    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 931
    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 862
    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 858
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 614
    return-void
.end method

.method public varargs handleInitialize([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 598
    return-void
.end method

.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 806
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 782
    return-void
.end method

.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 786
    return-void
.end method

.method public varargs handleKeyFocusDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 774
    return-void
.end method

.method public varargs handleKeyFocusUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 778
    return-void
.end method

.method public varargs handleKeyMenu([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 802
    return-void
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 790
    return-void
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 794
    return-void
.end method

.method public varargs handleKeyZoomUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 798
    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 633
    return-void
.end method

.method public varargs handleOnBurstGroupStoreCompleted([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onBurstStoreComplete(Z)V

    .line 975
    return-void
.end method

.method public varargs handleOnBurstShutterDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 968
    return-void
.end method

.method public varargs handleOnBurstStoreCompleted([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 971
    return-void
.end method

.method public varargs handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 985
    return-void
.end method

.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 622
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 618
    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 943
    return-void
.end method

.method public varargs handleOnFaceIdentified([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 947
    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 625
    const-string v0, "FastCapture"

    const-string v1, "ERROR:PRE-SCAN Event is not handled correctly. Check sequence."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 629
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 951
    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 981
    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 959
    return-void
.end method

.method public varargs handleOnPhotoStackInitialized([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 935
    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 637
    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 645
    return-void
.end method

.method public varargs handleOnPrepareTouchZoomTimedOut([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 814
    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 893
    return-void
.end method

.method public varargs handleOnRecordingStartWaitDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 897
    return-void
.end method

.method public varargs handleOnSceneModeChanged([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 939
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 641
    return-void
.end method

.method public varargs declared-synchronized handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 672
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 770
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 676
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget-object v1, p1, v2

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 678
    .local v1, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    if-ne v2, v3, :cond_5

    .line 679
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getBurstShotSetting()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    if-ne v2, v3, :cond_2

    .line 680
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onBurstStoreComplete(Z)V

    .line 685
    :cond_2
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSomcType()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->isCoverPicture(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v2, v3, :cond_3

    .line 688
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 672
    .end local v1    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 691
    .restart local v1    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v2, v3, :cond_4

    .line 692
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 693
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto/16 :goto_0

    .line 696
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 697
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 706
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 715
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->ensureVideoAutoReviewSettingHasLoaded()V

    .line 717
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 765
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureSucceeded()V

    goto/16 :goto_0

    .line 719
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getVideoAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    if-eq v2, v3, :cond_7

    .line 722
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_1

    .line 723
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getVideoAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-ne v2, v3, :cond_8

    .line 724
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 730
    :cond_8
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    if-eq v2, v3, :cond_6

    .line 732
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openReviewWindow: failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 742
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v2, v3, :cond_9

    .line 743
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto/16 :goto_1

    .line 744
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v2, v3, :cond_a

    .line 745
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    goto/16 :goto_1

    .line 748
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 756
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->startHideThumbnail()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 657
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 649
    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 653
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 610
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 810
    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State$ReTrySetupHeadUpDisplayTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 602
    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 606
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 846
    return-void
.end method

.method public varargs handleSetFocusPosition([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 917
    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 927
    return-void
.end method

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 955
    return-void
.end method

.method public varargs handleStartAfSearchInTouch([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 850
    return-void
.end method

.method public varargs handleStartAfSearchInTouchStop([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 854
    return-void
.end method

.method public varargs handleStartTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 818
    return-void
.end method

.method public varargs handleStopTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 822
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 866
    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 870
    return-void
.end method

.method public varargs handleStorageShouldChange([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 874
    return-void
.end method

.method public varargs handleSubCamcordButtonCancel([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 913
    return-void
.end method

.method public varargs handleSubCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 909
    return-void
.end method

.method public varargs handleSubCamcordButtonTouch([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 905
    return-void
.end method

.method public varargs handleSwitchCamera([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 963
    return-void
.end method

.method public handleTouchContentProgress()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
