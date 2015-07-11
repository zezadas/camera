.class public interface abstract Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserOperation"
.end annotation


# virtual methods
.method public abstract getCategory()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
.end method

.method public abstract getValue()I
.end method

.method public abstract getViewer()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
.end method

.method public abstract isShooting()Z
.end method

.method public abstract updateOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
.end method
