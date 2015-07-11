.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;)V
    .locals 0

    .prologue
    .line 4705
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f090092

    const/4 v3, 0x0

    .line 4708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4710
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f09006f

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 4714
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4716
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendCameraNotAvailableEvent()V

    .line 4727
    :goto_0
    return-void

    .line 4719
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090185

    const v4, 0x7f0900ad

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 4726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$2;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method
