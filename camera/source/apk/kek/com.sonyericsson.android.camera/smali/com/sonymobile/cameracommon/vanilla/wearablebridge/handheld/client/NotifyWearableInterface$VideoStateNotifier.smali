.class public interface abstract Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;
.super Ljava/lang/Object;
.source "NotifyWearableInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoStateNotifier"
.end annotation


# virtual methods
.method public abstract onStartRecordingFailed()V
.end method

.method public abstract onStartRecordingSucceeded()V
.end method

.method public abstract onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V
.end method

.method public abstract onStopRecordingFailed()V
.end method

.method public abstract onStopRecordingSucceeded()V
.end method
