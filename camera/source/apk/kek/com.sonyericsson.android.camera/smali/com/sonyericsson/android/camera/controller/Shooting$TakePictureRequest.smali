.class Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;
.super Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;
.source "Shooting.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/Shooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TakePictureRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/Shooting;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/Shooting;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p2, "isFirstRequest"    # Z
    .param p3, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;-><init>(Lcom/sonyericsson/android/camera/controller/Shooting;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 164
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->capture()V

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 173
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;-><init>(Lcom/sonyericsson/android/camera/controller/Shooting;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 174
    .local v0, "cb":Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 175
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mTimeForLastPictureTaken:J
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$202(Lcom/sonyericsson/android/camera/controller/Shooting;J)J

    .line 190
    const/4 v1, -0x1

    .line 191
    .local v1, "requestId":I
    const/4 v0, 0x0

    .line 192
    .local v0, "openReviewWindow":Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    if-eq v3, v4, :cond_0

    .line 194
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v3, v4, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 199
    :cond_0
    if-eqz v0, :cond_2

    .line 214
    :cond_1
    :goto_0
    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_COMPRESSED_DATA:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v3, v1, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 215
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$300(Lcom/sonyericsson/android/camera/controller/Shooting;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 216
    return-void

    .line 202
    :cond_2
    if-eqz p1, :cond_1

    .line 203
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$300(Lcom/sonyericsson/android/camera/controller/Shooting;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 204
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v3, p1, v4}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 208
    .local v2, "thumbnail":Landroid/view/View;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 209
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startEarlyThumbnailInsertAnimation(I)V

    goto :goto_0
.end method

.method public store([B)V
    .locals 2
    .param p1, "image"    # [B

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoOffTimer()V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 184
    :cond_0
    return-void
.end method
