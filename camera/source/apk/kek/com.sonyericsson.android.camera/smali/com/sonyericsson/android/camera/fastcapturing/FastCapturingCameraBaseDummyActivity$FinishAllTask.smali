.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;
.super Ljava/lang/Object;
.source "FastCapturingCameraBaseDummyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishAllTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;)V

    return-void
.end method

.method private retry()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mFinishAllTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraDeviceStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 111
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->mAvailableActivities:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 112
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 106
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$FinishAllTask;->retry()V

    .line 116
    :cond_1
    return-void

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
