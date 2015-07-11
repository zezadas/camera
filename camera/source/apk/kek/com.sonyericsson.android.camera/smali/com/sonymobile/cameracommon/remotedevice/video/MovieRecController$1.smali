.class Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;
.super Ljava/lang/Object;
.source "MovieRecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->startMovieRec(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->doStartMovieRec()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$200(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V

    .line 135
    return-void
.end method
