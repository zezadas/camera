.class Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;
.super Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyCallbackBaseTask;
.source "TakePictureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyOnPictureTakenTask"
.end annotation


# instance fields
.field private final mJpegBuffer:[B


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;[B)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;
    .param p2, "jpegBuffer"    # [B

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyCallbackBaseTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;)V

    .line 262
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;->mJpegBuffer:[B

    .line 263
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;->mJpegBuffer:[B

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;->onPictureTaken([B)V

    .line 270
    :cond_0
    return-void
.end method
