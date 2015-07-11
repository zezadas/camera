.class abstract Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyCallbackBaseTask;
.super Ljava/lang/Object;
.source "TakePictureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotifyCallbackBaseTask"
.end annotation


# instance fields
.field protected final mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyCallbackBaseTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .line 243
    return-void
.end method


# virtual methods
.method public abstract run()V
.end method
