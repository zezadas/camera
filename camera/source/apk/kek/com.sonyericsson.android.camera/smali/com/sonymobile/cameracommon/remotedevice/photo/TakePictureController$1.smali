.class Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;
.super Ljava/lang/Object;
.source "TakePictureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->takePicture(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->doTakePicture()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->access$200(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;)V

    .line 121
    return-void
.end method
