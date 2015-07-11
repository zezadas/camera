.class Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker$1;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

.field final synthetic val$readySignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker$1;->val$readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 40
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # setter for: Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->mLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->access$002(Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;Landroid/os/Looper;)Landroid/os/Looper;

    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker$1;->val$readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 44
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 45
    return-void
.end method
