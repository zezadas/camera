.class public interface abstract Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
.super Ljava/lang/Object;
.source "RecorderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecorderListener"
.end annotation


# virtual methods
.method public abstract onRecordError(II)V
.end method

.method public abstract onRecordFinished(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
.end method

.method public abstract onRecordPaused(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
.end method

.method public abstract onRecordProgress(J)V
.end method
