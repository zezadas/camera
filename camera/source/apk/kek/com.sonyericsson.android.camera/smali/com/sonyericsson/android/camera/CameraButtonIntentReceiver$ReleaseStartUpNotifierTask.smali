.class final Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReleaseStartUpNotifierTask;
.super Ljava/lang/Object;
.source "CameraButtonIntentReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseStartUpNotifierTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReleaseStartUpNotifierTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 724
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifierLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 725
    :try_start_0
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 727
    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 729
    :cond_0
    monitor-exit v1

    .line 732
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
