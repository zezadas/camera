.class public Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;,
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    }
.end annotation


# static fields
.field public static final DCF_DIR_NAME_FREE_WORD:Ljava/lang/String; = "ANDRO"

.field public static final DCF_FILE_NAME_FREE_WORD_MOVIE:Ljava/lang/String; = "MOV_"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field public static final LENGTH_OF_DIR_NAME:I = 0x8

.field public static final LENGTH_OF_FILE_NAME:I = 0xc

.field public static final MAX_DIR_NAME:I = 0x3e7

.field public static final MAX_FILE_NAME:I = 0x270f

.field public static final MIN_DIR_NAME:I = 0x64

.field public static final MIN_FILE_NAME:I = 0x1

.field private static final SCAN_WAIT_TIME:I = 0x1388

.field private static final SCAN_WAIT_TIME_FOR_MEDIASCAN:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "DcfPathBuilder"

.field public static final TYPE_PICTURE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final VOLUME_EXTERNAL:Ljava/lang/String; = "external"

.field private static sInstance:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;


# instance fields
.field private mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

.field private mDirNo:Ljava/lang/Integer;

.field private mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

.field private mFileNo:Ljava/lang/Integer;

.field private mIsScanned:Z

.field private mIsScanning:Z

.field private mPathScanner:Ljava/lang/Thread;

.field private mRootDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->sInstance:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 61
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 77
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 80
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    .line 148
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    .line 150
    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    return p1
.end method

.method private declared-synchronized assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 389
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-nez v4, :cond_1

    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, "waitingTime":I
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :try_start_2
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 411
    .end local v2    # "waitingTime":I
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 412
    const-string v1, ""

    .line 413
    .local v1, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 414
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x270f

    if-le v4, v5, :cond_4

    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->createImageDir()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-nez v4, :cond_3

    .line 436
    :goto_1
    monitor-exit p0

    return-object v3

    .line 395
    .end local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "waitingTime":I
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to scan."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "waitingTime":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 404
    .restart local v2    # "waitingTime":I
    :cond_2
    add-int/lit16 v2, v2, 0x1388

    .line 405
    const v4, 0xea60

    if-le v2, v4, :cond_0

    goto :goto_0

    .line 419
    .end local v2    # "waitingTime":I
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 422
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%03d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ANDRO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 426
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DSC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%04d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 436
    goto/16 :goto_1

    .line 429
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MOV_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    goto :goto_2

    .line 438
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_5
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-nez v3, :cond_6

    .line 440
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not yet scanned."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 444
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to scan."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createImageDir()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v1

    .line 342
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ANDRO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->sInstance:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    return-object v0
.end method

.method private isExistCurrentImageDir()Z
    .locals 8

    .prologue
    .line 359
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%03d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ANDRO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    return v1
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 455
    const/4 v7, 0x0

    .line 456
    .local v7, "result":Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 458
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 460
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 465
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_1
    return v7

    .line 465
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private searchImageDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    const/16 v4, 0x64

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$402(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;I)I

    .line 299
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 302
    :cond_0
    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 303
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->createImageDir()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "dirName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 305
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 306
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mDirName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$500(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "dirName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->searchImageNo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchImageNo(Ljava/lang/String;)V
    .locals 4
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    const/4 v3, 0x1

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->access$602(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;I)I

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "fileList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 325
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->access$600(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private declared-synchronized startScan()V
    .locals 3

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 167
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)V

    const-string v2, "DCF Path Builder"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "DcfPathBuilder"

    const-string v2, "Cancel failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected checkAndCreateDirectory(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "shouldReScan"    # Z

    .prologue
    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    .line 215
    .local v1, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 220
    :cond_0
    if-eqz p2, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isExistCurrentImageDir()Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    if-eqz p2, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V

    .line 231
    :cond_2
    return v1
.end method

.method public getDcimDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rootDirectory"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationToSave()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 529
    :goto_0
    if-eqz v0, :cond_0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".JPG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_0
    return-object v0

    .line 526
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getVideoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string v0, "/dev/null"

    .line 546
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    if-nez v0, :cond_0

    .line 552
    const-string v0, "/dev/null"

    .line 557
    :goto_1
    return-object v0

    .line 554
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 548
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAlreadyLastFileExist(Ljava/lang/String;)Z
    .locals 13
    .param p1, "dcimDirectory"    # Ljava/lang/String;

    .prologue
    .line 243
    move-object v1, p1

    .line 244
    .local v1, "photoPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%03d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ANDRO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/DSC_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%04d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x270f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".JPG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "photoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    const/4 v7, 0x1

    .line 272
    :goto_0
    return v7

    .line 254
    :cond_0
    move-object v6, p1

    .line 255
    .local v6, "videoPathNoExt":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%03d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ANDRO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/MOV_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%04d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x270f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "videoPathMp4":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, "videoFileMp4":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    const/4 v7, 0x1

    goto :goto_0

    .line 266
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "videoPathMms":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "videoFileMms":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 269
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 272
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized resetStatus()V
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public returnUnusedFile()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 377
    :cond_0
    return-void
.end method

.method public final search()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->checkAndCreateDirectory(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->searchImageDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDestinationToSave(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 487
    return-void
.end method
