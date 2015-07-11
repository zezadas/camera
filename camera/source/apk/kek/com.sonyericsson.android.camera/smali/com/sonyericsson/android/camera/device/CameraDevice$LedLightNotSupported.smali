.class Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightNotSupported;
.super Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedLightNotSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightNotSupported;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 2193
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightNotSupported;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 0

    .prologue
    .line 2203
    return-void
.end method

.method public turnOn()V
    .locals 0

    .prologue
    .line 2198
    return-void
.end method
