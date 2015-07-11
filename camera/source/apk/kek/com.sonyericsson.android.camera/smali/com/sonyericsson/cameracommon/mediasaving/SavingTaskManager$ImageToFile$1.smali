.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 405
    return-void
.end method
