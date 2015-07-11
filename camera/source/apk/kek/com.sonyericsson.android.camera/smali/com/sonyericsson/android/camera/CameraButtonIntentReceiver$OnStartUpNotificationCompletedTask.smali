.class final Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$OnStartUpNotificationCompletedTask;
.super Ljava/lang/Object;
.source "CameraButtonIntentReceiver.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartUpNotificationCompletedTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$OnStartUpNotificationCompletedTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 712
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReleaseStartUpNotifierTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReleaseStartUpNotifierTask;-><init>(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;)V

    .line 713
    .local v0, "task":Ljava/lang/Runnable;
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifyerService:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$700()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method
