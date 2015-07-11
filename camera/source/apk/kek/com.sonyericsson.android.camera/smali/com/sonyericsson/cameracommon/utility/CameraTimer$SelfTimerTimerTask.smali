.class Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;
.super Ljava/util/TimerTask;
.source "CameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/CameraTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTimerTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;Lcom/sonyericsson/cameracommon/utility/CameraTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # getter for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$100(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 113
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # getter for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$100(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 116
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # getter for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$200(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # getter for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$400(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v2

    # -= operator for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$122(Lcom/sonyericsson/cameracommon/utility/CameraTimer;J)J

    .line 131
    return-void

    .line 121
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # getter for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$100(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 124
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # getter for: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$200(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    # invokes: Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->access$300(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V

    goto :goto_0
.end method
