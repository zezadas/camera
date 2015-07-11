.class public Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
.super Ljava/lang/Object;
.source "EachDirPathBuilder.java"


# static fields
.field private static final CURRENT_DIR_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmssSSS"

.field private static final MAX_FILE_NAME:I = 0xf423f

.field private static final MAX_RETRY_TIMES_FOR_CREATING_CURRENT_DIR:I = 0x64

.field private static final MIN_FILE_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDirPath:Ljava/lang/String;

.field private mFileNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "subDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    .line 56
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->initDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private final getCurrentDirName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 194
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "currentDirName":Ljava/lang/String;
    return-object v0
.end method

.method private getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rootDirectoryPath"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "rootDirectoryPath"    # Ljava/lang/String;
    .param p2, "subDirectoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchSubDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "subDir":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 95
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    const-string v5, "initDirectory(): Fail to search sub dir is null"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fail to search sub dir."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "currentDir":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "searchNum":I
    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->getCurrentDirName()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "currentDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "currentDir":Ljava/io/File;
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .restart local v0    # "currentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDirectory(): Already directory exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "currentDirName":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 117
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    const-string v5, "initDirectory(): Max retry times for creating current dir."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Max retry times for creating current dir."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 125
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDirectory(): Fail to search current dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fail to search current dir."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    .line 132
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    .line 133
    return-void
.end method

.method private final searchDirectory(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 173
    const/4 v0, 0x1

    .line 174
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 182
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchDirectory() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final searchSubDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "rootDirectoryPath"    # Ljava/lang/String;
    .param p2, "subDirectoryName"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "dcimDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "dcimDirPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 149
    .local v3, "subDirPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 150
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v2, "subDir":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .end local v2    # "subDir":Ljava/io/File;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public assignImageFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    .line 67
    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    const v2, 0xf423f

    if-le v1, v2, :cond_0

    .line 68
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->TAG:Ljava/lang/String;

    const-string v2, "assignImageFilePath(): Max file name."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "filePath":Ljava/lang/StringBuilder;
    const-string v1, "DSC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%06d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
