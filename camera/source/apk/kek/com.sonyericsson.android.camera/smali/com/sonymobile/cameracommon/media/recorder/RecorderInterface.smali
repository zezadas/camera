.class public interface abstract Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
.super Ljava/lang/Object;
.source "RecorderInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;,
        Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;,
        Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;
    }
.end annotation


# virtual methods
.method public abstract awaitFinish()Z
.end method

.method public abstract getRecordingTimeMillis()J
.end method

.method public abstract isPauseAndResumeSupported()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isRecordingOrPaused()Z
.end method

.method public abstract isStopping()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract prepare(Landroid/hardware/Camera;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Z
.end method

.method public abstract resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation
.end method
