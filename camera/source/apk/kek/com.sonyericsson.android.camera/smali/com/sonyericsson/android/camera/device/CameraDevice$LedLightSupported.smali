.class Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;
.super Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedLightSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 2177
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 2

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 2188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 2189
    return-void
.end method

.method public turnOn()V
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 2182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 2183
    return-void
.end method
