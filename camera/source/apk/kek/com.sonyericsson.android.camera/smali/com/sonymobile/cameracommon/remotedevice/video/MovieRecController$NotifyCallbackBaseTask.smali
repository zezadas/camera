.class abstract Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyCallbackBaseTask;
.super Ljava/lang/Object;
.source "MovieRecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotifyCallbackBaseTask"
.end annotation


# instance fields
.field protected final mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyCallbackBaseTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .line 300
    return-void
.end method


# virtual methods
.method public abstract run()V
.end method
