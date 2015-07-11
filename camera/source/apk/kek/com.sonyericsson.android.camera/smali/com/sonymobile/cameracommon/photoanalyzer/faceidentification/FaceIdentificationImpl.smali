.class Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
.super Ljava/lang/Object;
.source "FaceIdentificationImpl.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$NotifyFaceIdentifiedTask;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$CallbackTask;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$ReleaseTask;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$FaceCharacteristic;
    }
.end annotation


# static fields
.field private static final DELAYED_IMMEDIATELY_RESULT_CALLBACK_TIME:I = 0x1f4

.field private static final IS_FACE_ID_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFaceIdVsCharacteristicCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$FaceCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsAlreadyRequested:Z

.field private volatile mIsReleased:Z

.field private final mPrepareTask:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;

.field private final mReleaseTask:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$ReleaseTask;

.field private mRemoteFaceRecognition:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

.field private mRequestUUid:Ljava/lang/String;

.field private mResultListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServiceCallback:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;

.field private mServiceSyncThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceSyncThread:Ljava/util/concurrent/ExecutorService;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mResultListMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mCallbackMap:Ljava/util/Map;

    .line 67
    iput-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z

    .line 73
    iput-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRemoteFaceRecognition:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

    .line 76
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsReleased:Z

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mFaceIdVsCharacteristicCache:Ljava/util/Map;

    .line 121
    new-instance v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$1;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 174
    new-instance v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mPrepareTask:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;

    .line 221
    new-instance v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$ReleaseTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$ReleaseTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mReleaseTask:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$ReleaseTask;

    .line 614
    new-instance v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$2;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceCallback:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;

    .line 141
    iput-object p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->prepare()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRemoteFaceRecognition:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;)Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
    .param p1, "x1"    # Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRemoteFaceRecognition:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsReleased:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceCallback:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceSyncThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mResultListMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mFaceIdVsCharacteristicCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z

    .line 647
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mResultListMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mCallbackMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z

    goto :goto_0
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/sonymobile/photoanalyzer/content/PhotoAnalyzerIntent;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.photoanalyzer.intent.action.BIND_FACE_RECOGNITION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 196
    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceSyncThread:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mPrepareTask:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$PrepareTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->cancel()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsReleased:Z

    .line 239
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceSyncThread:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mReleaseTask:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$ReleaseTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized request([BIIIILjava/util/List;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;)V
    .locals 9
    .param p1, "yuv"    # [B
    .param p2, "yuvFormat"    # I
    .param p3, "yuvWidth"    # I
    .param p4, "yuvHeight"    # I
    .param p5, "yuvOrientation"    # I
    .param p7, "callback"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIII",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 294
    .local p6, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    :try_start_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "YUV is null, or Request is null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 299
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z

    if-eqz v1, :cond_2

    .line 300
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Currently, service is busy."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z

    .line 305
    new-instance v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;[BIIIILjava/util/List;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;)V

    .line 313
    .local v0, "task":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceSyncThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    monitor-exit p0

    return-void
.end method
