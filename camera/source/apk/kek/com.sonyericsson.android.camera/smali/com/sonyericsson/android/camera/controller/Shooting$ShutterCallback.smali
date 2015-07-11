.class Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;
.super Ljava/lang/Object;
.source "Shooting.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/Shooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterCallback"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/Shooting;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/Shooting;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 128
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getRequestId(Z)I

    move-result v0

    .line 133
    .local v0, "requestId":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 134
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setThumbnailViewClickListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showProgressForSnapshot(I)V

    .line 138
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 139
    return-void
.end method
