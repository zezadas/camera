.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;
.super Ljava/lang/Object;
.source "StorageUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetStatFsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/StatFs;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target path is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;->mPath:Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method public call()Landroid/os/StatFs;
    .locals 5

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 272
    .local v1, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statFs":Landroid/os/StatFs;
    .local v2, "statFs":Landroid/os/StatFs;
    move-object v1, v2

    .line 277
    .end local v2    # "statFs":Landroid/os/StatFs;
    .restart local v1    # "statFs":Landroid/os/StatFs;
    :goto_0
    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Create StatFs failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;->call()Landroid/os/StatFs;

    move-result-object v0

    return-object v0
.end method
