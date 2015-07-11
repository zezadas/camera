.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraSwitching"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateCameraSwitching"


# instance fields
.field private final mFastCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field private mIsLaunch:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1098
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1095
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mIsLaunch:Z

    .line 1099
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 1100
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 1101
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mIsLaunch:Z

    .line 1103
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1105
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V
    .locals 1
    .param p2, "fastCap"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mIsLaunch:Z

    .line 1109
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mIsLaunch:Z

    .line 1111
    return-void
.end method


# virtual methods
.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isOpenDeviceThreadAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getTargetCameraId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->prepareCameraDeviceHandler(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;I)V

    .line 1133
    :cond_0
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1119
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 1120
    .local v0, "surface":Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->mIsLaunch:Z

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startFastCapture(Landroid/view/SurfaceHolder;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/view/SurfaceHolder;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V

    .line 1124
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1149
    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1138
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCameraNotAvailableFailedToOpen()V

    .line 1140
    const-string v0, "StateMachine.StateCameraSwitching"

    const-string v1, "[CameraNotAvailable] resume timeout."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->showCameraNotAvailableError()V

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1144
    return-void
.end method
