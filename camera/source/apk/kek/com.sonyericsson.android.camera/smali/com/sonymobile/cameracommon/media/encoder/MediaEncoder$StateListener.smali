.class public interface abstract Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onFinished(Z)V
.end method

.method public abstract onProgress(JJ)V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStorageFull()V
.end method
