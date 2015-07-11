.class public Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;
.super Ljava/lang/Object;
.source "GaGtmExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    }
.end annotation


# static fields
.field private static final DEEPMODE_EVENT_STRING:Ljava/lang/String; = "EVENT"

.field private static final DEEPMODE_EXCEPTION_STRING:Ljava/lang/String; = "EXCEPTION"

.field private static final HASH_VERSION:Ljava/lang/String; = "0"

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final MAX_CAUSE_DEPTH:I = 0x2

.field private static final MAX_MESSAGE_LENGTH:I = 0x28

.field private static final MAX_REPORTED_ROWS_DEFAULT:I = 0x3

.field private static final MAX_TRAVERSED_ROWS_DEFAULT:I = 0x14

.field private static volatile mAppVersion:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static volatile mDeepCrashHashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

.field private static volatile mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile mEnabledPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static volatile mMaxReportedRows:I

.field private static volatile mMaxTraversedRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    .line 47
    const/4 v0, 0x3

    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 52
    const/16 v0, 0x14

    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EXCEPTION:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 346
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 350
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 352
    const-string v2, " Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 364
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 356
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 384
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 385
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    return-object v2
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 12
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v5, "retval":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 401
    .local v8, "stackTraceIndex":I
    const/4 v2, 0x0

    .line 402
    .local v2, "done":Z
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 403
    .local v7, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v9, 0x0

    .line 404
    .local v9, "stackTraceLength":I
    const/4 v0, 0x0

    .line 406
    .local v0, "addedRows":I
    sget-object v11, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 407
    :try_start_0
    sget v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 408
    .local v3, "maxReportedRows":I
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    sget-object v11, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 411
    :try_start_1
    sget v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 412
    .local v4, "maxStackDepth":I
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    if-eqz v7, :cond_1

    .line 416
    array-length v9, v7

    .line 417
    const-string v10, " S:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_0
    if-nez v2, :cond_3

    if-ge v8, v4, :cond_3

    if-ge v0, v3, :cond_3

    if-ge v8, v9, :cond_3

    .line 424
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    aget-object v6, v10, v8

    .line 426
    .local v6, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v6, :cond_2

    .line 429
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->packageNameIsEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 432
    invoke-static {v7, v8}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v0, v0, 0x1

    .line 437
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 439
    goto :goto_0

    .line 408
    .end local v1    # "classname":Ljava/lang/String;
    .end local v3    # "maxReportedRows":I
    .end local v4    # "maxStackDepth":I
    .end local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 412
    .restart local v3    # "maxReportedRows":I
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 419
    .restart local v4    # "maxStackDepth":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 441
    .restart local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 445
    .end local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    if-nez v0, :cond_4

    .line 449
    if-lez v9, :cond_5

    .line 451
    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 459
    :cond_4
    :goto_1
    return-object v5

    .line 455
    :cond_5
    const-string v10, "stackTrace was empty"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static enableExceptionParsing(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    sput-object p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 207
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "GaGtmHelper"

    const-string v2, "setEnabledPackageNames is empty!"

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_1

    .line 212
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 252
    return-void

    .line 214
    :cond_1
    :try_start_3
    const-string v0, "GaGtmHelper"

    const-string v2, "enableExceptionParsing was called twice but it should normally not be done!"

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 223
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 266
    :try_start_0
    const-string v3, "GaGtmHelper"

    const-string v4, "GenerateCrash"

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 269
    :cond_0
    const-string v3, "GaGtmHelper"

    const-string v4, "Thread or throwable was null"

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->getStackTraceHash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "hash":Ljava/lang/String;
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception has hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {p0, p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->isDeepCrash(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    const-string v3, "GaGtmHelper"

    const-string v4, "Generate deep crash"

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EVENT:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 287
    .local v1, "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :try_start_1
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 289
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :try_start_2
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EVENT:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    if-ne v1, v3, :cond_3

    .line 292
    invoke-static {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateDeepCrashEventMode(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 299
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internal exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 293
    :cond_3
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EXCEPTION:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    if-ne v1, v3, :cond_1

    .line 294
    invoke-static {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateDeepCrashExceptionMode(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .end local v1    # "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    :cond_4
    const-string v3, "GaGtmHelper"

    const-string v4, "no deep crash is to be generated"

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method private static generateDeepCrashEventMode(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 13
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 657
    .local v10, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v12, 0x0

    .line 658
    .local v12, "stackTraceLength":I
    const/4 v11, 0x0

    .line 659
    .local v11, "stackTraceIndex":I
    const/4 v6, 0x0

    .line 661
    .local v6, "done":Z
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    sget v7, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 663
    .local v7, "maxStackDepth":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDeepCrashEventmode hash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    if-eqz v10, :cond_0

    .line 670
    array-length v12, v10

    .line 675
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    if-ge v11, v7, :cond_2

    if-ge v11, v12, :cond_2

    .line 677
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v9, v0, v11

    .line 679
    .local v9, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v9, :cond_1

    .line 681
    invoke-static {v10, v11}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 684
    .local v8, "stackElementDescription":Ljava/lang/StringBuilder;
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    const-string v1, "deepCrash"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushDeepEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 690
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 663
    .end local v7    # "maxStackDepth":I
    .end local v8    # "stackElementDescription":Ljava/lang/StringBuilder;
    .end local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 694
    .restart local v7    # "maxStackDepth":I
    .restart local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 697
    .end local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    return-void
.end method

.method private static generateDeepCrashExceptionMode(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 10
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v0, "description":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 711
    .local v5, "stackTraceIndex":I
    const/4 v1, 0x0

    .line 712
    .local v1, "done":Z
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 713
    .local v4, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .line 715
    .local v6, "stackTraceLength":I
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 716
    :try_start_0
    sget v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 717
    .local v2, "maxStackDepth":I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    const-string v7, "GaGtmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeepCrashExceptionMode hash:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    if-eqz v4, :cond_0

    .line 724
    array-length v6, v4

    .line 728
    :cond_0
    const-string v7, "deepCrash H:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :goto_0
    if-nez v1, :cond_2

    if-ge v5, v2, :cond_2

    if-ge v5, v6, :cond_2

    .line 732
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v3, v7, v5

    .line 734
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_1

    .line 735
    invoke-static {v4, v5}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 736
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 717
    .end local v2    # "maxStackDepth":I
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 739
    .restart local v2    # "maxStackDepth":I
    .restart local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 743
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    const-string v7, "GaGtmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deep exception description:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v7, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushDeepException(Landroid/content/Context;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method private static generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v1, "H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, " T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaughtException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "GaGtmHelper"

    const-string v2, "about to push exception"

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushException(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    const-string v1, "GaGtmHelper"

    const-string v2, "done pushing"

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private static getRawStackTraceHashString(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 11
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v3, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 553
    .local v5, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v7, 0x0

    .line 554
    .local v7, "stackTraceLength":I
    const/4 v6, 0x0

    .line 555
    .local v6, "stackTraceIndex":I
    const/4 v2, 0x0

    .line 558
    .local v2, "done":Z
    sget-object v9, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 559
    :try_start_0
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 567
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    :cond_0
    if-eqz v5, :cond_1

    .line 574
    array-length v7, v5

    .line 577
    :cond_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :goto_0
    if-nez v2, :cond_4

    const/16 v8, 0x14

    if-ge v6, v8, :cond_4

    if-ge v6, v7, :cond_4

    .line 582
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v4, v8, v6

    .line 584
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_3

    .line 587
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->packageNameIsEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 590
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 597
    goto :goto_0

    .line 560
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "classname":Ljava/lang/String;
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 599
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 603
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_4
    const-string v8, "GaGtmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stackTraceHashString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static getStackTraceHash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 524
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->getRawStackTraceHashString(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "hashString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 527
    .local v0, "hash":I
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hashString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "retval":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hashString base64:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-object v2
.end method

.method private static intToByteArray(I)[B
    .locals 3
    .param p0, "integer"    # I

    .prologue
    .line 614
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 615
    .local v0, "ret":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 616
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 617
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 618
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 619
    return-object v0
.end method

.method private static isDeepCrash(Ljava/lang/String;)Z
    .locals 5
    .param p0, "crashHash"    # Ljava/lang/String;

    .prologue
    .line 509
    sget-object v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 510
    :try_start_0
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 511
    .local v0, "found":Z
    const-string v1, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeepCrash for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    monitor-exit v2

    return v0

    .line 513
    .end local v0    # "found":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static packageNameIsEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 491
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_0
    sget-object v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    .local v0, "enabledPackageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const/4 v2, 0x1

    monitor-exit v3

    .line 498
    .end local v0    # "enabledPackageName":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 499
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 629
    .local v1, "length":I
    move-object v2, p0

    .line 631
    .local v2, "retval":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 633
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 639
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 640
    move-object v2, p0

    .line 631
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_2
    return-object v2
.end method

.method public static setDeepCrashHashList(Ljava/lang/String;)V
    .locals 7
    .param p0, "arrayOfHashes"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeepCrashHashList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    .line 178
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 179
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 196
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 187
    .restart local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 193
    const-string v5, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    return-void
.end method

.method public static setDeepMode(Ljava/lang/String;)V
    .locals 3
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeepMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    const-string v0, "EVENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "GaGtmHelper"

    const-string v2, "DEEPMODE_EVENT active"

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EVENT:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 161
    :cond_0
    :goto_0
    monitor-exit v1

    .line 162
    return-void

    .line 155
    :cond_1
    const-string v0, "EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EXCEPTION:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 157
    const-string v0, "GaGtmHelper"

    const-string v2, "DEEPMODE_EXCEPTION active"

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEnabledPackageNames(Ljava/lang/String;)V
    .locals 7
    .param p0, "arrayOfPackageNames"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabledPackageNames "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 78
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    .line 82
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 83
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 100
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 91
    .restart local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 97
    const-string v5, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    return-void
.end method

.method public static setMaxReportedRows(I)V
    .locals 3
    .param p0, "maxRows"    # I

    .prologue
    .line 109
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 p0, 0x3

    .line 114
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value was 0, setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setMaxTraversedRows(I)V
    .locals 3
    .param p0, "maxRows"    # I

    .prologue
    .line 127
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxTraversedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez p0, :cond_0

    .line 131
    const/16 p0, 0x14

    .line 132
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value was 0, setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "stackTraceElementArray"    # [Ljava/lang/StackTraceElement;
    .param p1, "stackTraceIndex"    # I

    .prologue
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v1, "retval":Ljava/lang/StringBuilder;
    aget-object v2, p0, p1

    .line 475
    .local v2, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".java"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "fileName":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    return-object v1
.end method
