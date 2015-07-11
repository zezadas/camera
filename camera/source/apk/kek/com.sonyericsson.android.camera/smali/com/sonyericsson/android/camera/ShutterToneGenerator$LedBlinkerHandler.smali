.class public Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;
.super Landroid/os/Handler;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ShutterToneGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LedBlinkerHandler"
.end annotation


# static fields
.field public static final MSG_LIGHT_OFF:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ShutterToneGenerator;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/ShutterToneGenerator;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;->this$0:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;->this$0:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    # getter for: Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->access$000(Lcom/sonyericsson/android/camera/ShutterToneGenerator;)Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOffLight()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
