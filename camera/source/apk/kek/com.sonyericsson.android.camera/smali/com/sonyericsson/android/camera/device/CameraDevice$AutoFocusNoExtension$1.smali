.class Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension$1;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->autoFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;)V
    .locals 0

    .prologue
    .line 1779
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1784
    return-void
.end method
