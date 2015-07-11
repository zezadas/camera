.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestStoreTask"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5489
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5490
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 5491
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5496
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    monitor-enter v1

    .line 5497
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5500
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$6500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 5516
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5528
    return-void

    .line 5502
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5506
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$6600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5510
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 5513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$6500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
