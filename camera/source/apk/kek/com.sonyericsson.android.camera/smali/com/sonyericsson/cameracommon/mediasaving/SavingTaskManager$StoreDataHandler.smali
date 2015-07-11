.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;
.super Landroid/os/Handler;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreDataHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 450
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 453
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
