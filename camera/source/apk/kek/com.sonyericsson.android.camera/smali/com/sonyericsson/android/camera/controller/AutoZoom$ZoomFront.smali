.class Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;
.super Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;
.source "AutoZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AutoZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomFront"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;Lcom/sonyericsson/android/camera/controller/AutoZoom$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/AutoZoom$1;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    return-void
.end method


# virtual methods
.method public prepare()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f0900b0

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 455
    return v3
.end method
