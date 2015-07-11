.class Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "CaptureButtonGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$GestureHandler;->this$0:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$GestureHandler;->this$0:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->access$000(Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
