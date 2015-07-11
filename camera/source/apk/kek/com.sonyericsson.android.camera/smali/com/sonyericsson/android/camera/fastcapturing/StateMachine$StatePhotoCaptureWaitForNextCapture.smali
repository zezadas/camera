.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCaptureWaitForNextCapture"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoCapture"


# instance fields
.field private mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private mIsAlreadyPreviousCaptureDone:Z

.field private mIsAlreadyRequestStoreDone:Z

.field private mIsMemoryErrorOccured:Z

.field private mIsNextCaptureRequired:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2702
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2689
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsMemoryErrorOccured:Z

    .line 2692
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsNextCaptureRequired:Z

    .line 2695
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyPreviousCaptureDone:Z

    .line 2696
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyRequestStoreDone:Z

    .line 2699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 2703
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 2704
    return-void
.end method

.method private varargs checkAndGoToNextCapture([Ljava/lang/Object;)V
    .locals 9
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2750
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyPreviousCaptureDone:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyRequestStoreDone:Z

    if-eqz v1, :cond_0

    .line 2756
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 2759
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsMemoryErrorOccured:Z

    if-eqz v1, :cond_1

    .line 2760
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->onCaptureDone()V

    .line 2762
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v1, v8}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2765
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3, v7}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v3, v7, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2766
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v3, v7, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsNextCaptureRequired:Z

    if-nez v1, :cond_2

    .line 2772
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->onCaptureDone()V

    .line 2774
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStore;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStore;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v3, v7, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2780
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->startCaptureFeedbackAnimation()V

    .line 2781
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCapture()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2783
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyPreviousCaptureDone:Z

    .line 2784
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyRequestStoreDone:Z

    .line 2786
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsNextCaptureRequired:Z

    .line 2788
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v1, v2, :cond_3

    .line 2789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 2791
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2797
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2801
    .end local v0    # "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    goto :goto_0
.end method


# virtual methods
.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->canPushStoreTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2724
    :goto_0
    return-void

    .line 2723
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsNextCaptureRequired:Z

    goto :goto_0
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->canPushStoreTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2714
    :goto_0
    return-void

    .line 2713
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsNextCaptureRequired:Z

    goto :goto_0
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyRequestStoreDone:Z

    .line 2746
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->checkAndGoToNextCapture([Ljava/lang/Object;)V

    .line 2747
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2731
    aget-object v0, p1, v2

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 2732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 2735
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsAlreadyPreviousCaptureDone:Z

    .line 2738
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mCachedRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->checkAndGoToNextCapture([Ljava/lang/Object;)V

    .line 2739
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2813
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;->mIsMemoryErrorOccured:Z

    .line 2808
    return-void
.end method
