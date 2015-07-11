.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;
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
    name = "ChangeCameraModeTask"
.end annotation


# instance fields
.field private final mIsChangeToStandbyRequired:Z

.field private final mIsModelessRecording:Z

.field private final mRequestCameraType:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IZZ)V
    .locals 0
    .param p2, "cameraType"    # I
    .param p3, "changeToStandby"    # Z
    .param p4, "isModelessRecroding"    # Z

    .prologue
    .line 5772
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5773
    iput p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mRequestCameraType:I

    .line 5774
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mIsChangeToStandbyRequired:Z

    .line 5775
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mIsModelessRecording:Z

    .line 5776
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5780
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    if-nez v3, :cond_1

    .line 5846
    :cond_0
    :goto_0
    return-void

    .line 5786
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mRequestCameraType:I

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mIsModelessRecording:Z

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->changeCameraModeTo(IZ)Z

    move-result v0

    .line 5790
    .local v0, "isPreviewRestarted":Z
    if-eqz v0, :cond_2

    .line 5792
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doDeselectObject()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 5796
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5800
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_CAMERA_MODE_CHANGED_TO:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mRequestCameraType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5805
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mIsChangeToStandbyRequired:Z

    if-eqz v3, :cond_3

    .line 5806
    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->mRequestCameraType:I

    packed-switch v3, :pswitch_data_0

    .line 5823
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->willPreviewBeRestarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5825
    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;)V

    .line 5834
    .local v2, "task":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 5835
    .local v1, "settingVideoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5841
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5808
    .end local v1    # "settingVideoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .end local v2    # "task":Ljava/lang/Runnable;
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v4, v5, v8}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5811
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    goto :goto_1

    .line 5815
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5818
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    goto :goto_1

    .line 5843
    .restart local v1    # "settingVideoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .restart local v2    # "task":Ljava/lang/Runnable;
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 5806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
