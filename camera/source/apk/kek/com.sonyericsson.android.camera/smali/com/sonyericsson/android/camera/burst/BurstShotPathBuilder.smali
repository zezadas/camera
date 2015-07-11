.class public Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
.super Ljava/lang/Object;
.source "BurstShotPathBuilder.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;


# instance fields
.field mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->BURST_DIR_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    .line 33
    return-void
.end method


# virtual methods
.method public getNextFilePathToStorePicture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->assignImageFilePath()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "filePath":Ljava/lang/String;
    return-object v0
.end method
