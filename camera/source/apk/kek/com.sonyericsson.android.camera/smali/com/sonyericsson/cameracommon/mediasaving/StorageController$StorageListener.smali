.class public interface abstract Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
.super Ljava/lang/Object;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageListener"
.end annotation


# virtual methods
.method public abstract onAvailableSizeUpdated(J)V
.end method

.method public abstract onDestinationToSaveChanged()V
.end method

.method public abstract onStorageStateChanged(Ljava/lang/String;)V
.end method
