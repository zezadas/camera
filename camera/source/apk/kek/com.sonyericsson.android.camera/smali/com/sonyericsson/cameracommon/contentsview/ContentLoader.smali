.class public Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    }
.end annotation


# static fields
.field private static final MAX_LOCAL_CACHE_NUM:I = 0x64

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

.field private mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

.field private mLocalCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .param p3, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .param p4, "maxContentNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 106
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p4}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 107
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    .line 109
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 341
    :cond_0
    return-void
.end method

.method private clearLocalCache()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 350
    :cond_0
    return-void
.end method

.method private getLocalCache()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    return-object v0
.end method

.method private loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V
    .locals 3
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v2

    if-gtz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 217
    .local v1, "oldestTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 218
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 222
    .end local v1    # "oldestTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 223
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method private removeFuture(I)V
    .locals 4
    .param p1, "indexId"    # I

    .prologue
    .line 234
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v3, :cond_1

    .line 260
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 239
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 241
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "id":I
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 253
    :goto_1
    if-ne v1, p1, :cond_2

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 248
    :catch_0
    move-exception v3

    goto :goto_1

    .line 245
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 119
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 121
    .end local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    .line 126
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    .line 135
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 142
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 144
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V

    .line 148
    return-void
.end method

.method public reload(ILjava/util/List;)V
    .locals 9
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "destinations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 200
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V

    .line 202
    .local v0, "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    .end local v3    # "index":I
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v8

    .line 185
    .local v8, "localCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;>;"
    if-eqz v8, :cond_0

    .line 186
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 190
    .local v7, "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v6

    .line 191
    .local v6, "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v6}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 206
    .end local v6    # "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .end local v7    # "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .end local v8    # "localCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;>;"
    :cond_0
    return-void

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeTopContent()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 368
    :cond_0
    return-void
.end method

.method public request(ILandroid/net/Uri;)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 167
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;-><init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V

    .line 168
    .local v0, "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V

    .line 169
    return-void
.end method

.method public updateSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;)V
    .locals 0
    .param p1, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 152
    return-void
.end method
