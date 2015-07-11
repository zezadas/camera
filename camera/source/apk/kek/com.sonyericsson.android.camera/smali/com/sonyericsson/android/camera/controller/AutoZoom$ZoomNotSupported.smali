.class Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;
.super Ljava/lang/Object;
.source "AutoZoom.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AutoZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomNotSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V
    .locals 1

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearZoomChangeListener()V

    .line 405
    return-void
.end method


# virtual methods
.method public finishZoom()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public setZoomStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 440
    return-void
.end method

.method public startZoom(F)V
    .locals 0
    .param p1, "scaleLength"    # F

    .prologue
    .line 445
    return-void
.end method

.method public startZoomIn()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public startZoomOut()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public stopZoom()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method
