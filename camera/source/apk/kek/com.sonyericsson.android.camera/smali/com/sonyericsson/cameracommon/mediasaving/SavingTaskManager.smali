.class public Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$GeoMode;
    }
.end annotation


# static fields
.field private static final MSG_ON_STORE_CALLBACK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mExecutorLock:Ljava/lang/Object;

.field private final mIsOneShotPhoto:Z

.field private mSavingTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field private mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

.field private mStoreVideoThread:Ljava/lang/Thread;

.field private mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .param p3, "isOneShotPhoto"    # Z

    .prologue
    const/4 v1, 0x0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 57
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutorLock:Ljava/lang/Object;

    .line 66
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    .line 474
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    .line 478
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 479
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 484
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    .line 485
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    invoke-direct {v0, p1, p3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    .line 486
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z

    .line 487
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->shutdownExecutor()V

    return-void
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method private pushPhotoSavingTask([BLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 1
    .param p1, "image"    # [B
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 538
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 539
    .local v0, "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->request(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 540
    return-void
.end method

.method private shutdownExecutor()V
    .locals 2

    .prologue
    .line 731
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 737
    :cond_0
    monitor-exit v1

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private submitExecutor(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .locals 2
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 721
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 723
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 726
    monitor-exit v1

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public canPushStoreTask()Z
    .locals 6

    .prologue
    .line 682
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 683
    .local v0, "usedMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 684
    const/4 v2, 0x1

    .line 686
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method cancelSavingVideoTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 657
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->TAG:Ljava/lang/String;

    const-string v2, "cancelSavingVideoTask interrupted."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v1
.end method

.method public getExpectedTotalSavedPicturesSize()J
    .locals 8

    .prologue
    .line 695
    const-wide/16 v4, 0x0

    .line 697
    .local v4, "reservedSize":J
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 698
    .local v2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;>;"
    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 699
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .line 701
    .local v0, "element":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->getExpectedFileSize()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 702
    goto :goto_0

    .line 706
    .end local v0    # "element":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    :cond_0
    return-wide v4
.end method

.method protected notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 554
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 556
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 563
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 672
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    .line 716
    return-void
.end method

.method public request(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .locals 1
    .param p1, "savingTask"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->submitExecutor(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 496
    return-void
.end method

.method public storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->log()V

    .line 518
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->pushPhotoSavingTask([BLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 533
    :goto_0
    return-void

    .line 521
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "### can\'t store a specified image file."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "### so, notify a failure of storing the specified image file."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .locals 8
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 572
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->log()V

    .line 573
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 583
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 585
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "storeVideo: mStoreVideoThread timeout."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 601
    :goto_0
    return-void

    .line 593
    :cond_0
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 597
    :cond_1
    :goto_1
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 598
    .local v1, "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Store video thread"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 599
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v2, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 600
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 590
    .end local v1    # "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;
    :catch_0
    move-exception v2

    .line 593
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v2
.end method
