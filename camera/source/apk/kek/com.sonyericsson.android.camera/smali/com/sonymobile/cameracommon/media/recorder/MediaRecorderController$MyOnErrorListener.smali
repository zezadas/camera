.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 583
    move v1, p2

    .line 584
    .local v1, "postWhat":I
    move v0, p3

    .line 586
    .local v0, "postExtra":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1600(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method
