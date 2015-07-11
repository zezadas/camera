.class public interface abstract Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;
.super Ljava/lang/Object;
.source "NotifyWearableInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoStateNotifier"
.end annotation


# virtual methods
.method public abstract onCaptureFailed()V
.end method

.method public abstract onCaptureSucceeded()V
.end method

.method public abstract onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V
.end method
