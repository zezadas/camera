.class Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;
.super Landroid/os/Handler;
.source "AutoZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AutoZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoombarHandler"
.end annotation


# static fields
.field private static final MSG_HIDE:I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideZoombar()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
