.class Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;
.super Ljava/lang/Object;
.source "Selftimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/Selftimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTimerStartTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/Selftimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/Selftimer;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;->this$0:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/Selftimer;Lcom/sonyericsson/android/camera/controller/Selftimer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/Selftimer;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/Selftimer$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;-><init>(Lcom/sonyericsson/android/camera/controller/Selftimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;->this$0:Lcom/sonyericsson/android/camera/controller/Selftimer;

    # getter for: Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Selftimer;->access$200(Lcom/sonyericsson/android/camera/controller/Selftimer;)Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;->this$0:Lcom/sonyericsson/android/camera/controller/Selftimer;

    # getter for: Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Selftimer;->access$200(Lcom/sonyericsson/android/camera/controller/Selftimer;)Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    .line 196
    :cond_0
    return-void
.end method
