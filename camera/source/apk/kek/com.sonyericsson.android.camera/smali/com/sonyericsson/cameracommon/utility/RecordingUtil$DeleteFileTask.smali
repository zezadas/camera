.class Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;
.super Ljava/lang/Object;
.source "RecordingUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/RecordingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mIsEmpty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isEmpty"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;->mFilePath:Ljava/lang/String;

    .line 107
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;->mIsEmpty:Z

    .line 108
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "success":Z
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "deleteFile":Ljava/io/File;
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;->mIsEmpty:Z

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 136
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v1, 0x1

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
    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
