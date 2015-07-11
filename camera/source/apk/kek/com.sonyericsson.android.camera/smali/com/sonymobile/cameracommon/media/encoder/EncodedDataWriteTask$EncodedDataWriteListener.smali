.class public interface abstract Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;
.super Ljava/lang/Object;
.source "EncodedDataWriteTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncodedDataWriteListener"
.end annotation


# virtual methods
.method public abstract onEncodedDataWritten(JJ)V
.end method

.method public abstract onEncoderFinished()V
.end method

.method public abstract onEncoderFormatChanged(Landroid/media/MediaFormat;)V
.end method

.method public abstract onStorageFull()V
.end method
