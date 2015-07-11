.class final Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$StartUpNotifierTask;
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
    name = "StartUpNotifierTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$StartUpNotifierTask;->mContext:Landroid/content/Context;

    .line 666
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 672
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifierLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$300()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$StartUpNotifierTask;->mContext:Landroid/content/Context;

    const v3, 0x7f070011

    invoke-static {v1, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 674
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 675
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :try_start_1
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    :try_start_2
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 699
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$OnStartUpNotificationCompletedTask;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$OnStartUpNotificationCompletedTask;-><init>(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 700
    monitor-exit v2

    .line 703
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 680
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 681
    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 682
    monitor-exit v2

    goto :goto_0

    .line 700
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 692
    :catch_1
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 694
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$400()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 695
    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 696
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
