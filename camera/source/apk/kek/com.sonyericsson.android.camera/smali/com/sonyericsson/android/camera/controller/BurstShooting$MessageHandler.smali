.class Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;
.super Landroid/os/Handler;
.source "BurstShooting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/BurstShooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_SHOW_EARLY_THUMBNAIL:I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/BurstShooting$1;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;->removeMessages(I)V

    .line 197
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startEarlyThumbnailInsertAnimation(I)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
