.class Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStoppedTask;
.super Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyCallbackBaseTask;
.source "MovieRecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyOnMovieRecStoppedTask"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyCallbackBaseTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V

    .line 334
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStoppedTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStoppedTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;->onMovieRecStopped()V

    .line 341
    :cond_0
    return-void
.end method
