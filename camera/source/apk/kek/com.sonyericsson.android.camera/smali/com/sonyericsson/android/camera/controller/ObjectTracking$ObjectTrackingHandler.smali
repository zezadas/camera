.class Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;
.super Landroid/os/Handler;
.source "ObjectTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingHandler"
.end annotation


# static fields
.field private static final MSG_TIMEOUT_INVISIBLE:I = 0x2

.field private static final MSG_TIMEOUT_LOST:I = 0x1

.field private static final TIMEOUT_INVISIBLE:I = 0x1f4

.field private static final TIMEOUT_LOST:I = 0xbb8


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$100(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isObjectTrackingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0

    .line 166
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_OBJECT_TRACKING_INVISIBLE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startTimeoutCount()V
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    const/4 v0, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    return-void
.end method

.method public stopTimeoutCount()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->removeMessages(I)V

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->removeMessages(I)V

    .line 152
    return-void
.end method
