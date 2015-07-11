.class public interface abstract Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;
.super Ljava/lang/Object;
.source "ObserveHandheldInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoStateObserver"
.end annotation


# virtual methods
.method public abstract onCaptureFailed()V
.end method

.method public abstract onCaptureSucceeded()V
.end method

.method public abstract onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V
.end method
