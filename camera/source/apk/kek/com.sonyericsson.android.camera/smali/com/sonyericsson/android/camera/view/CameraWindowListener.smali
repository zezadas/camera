.class public abstract Lcom/sonyericsson/android/camera/view/CameraWindowListener;
.super Ljava/lang/Object;
.source "CameraWindowListener.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getLocation()Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;
.end method

.method public abstract hasWithholdThermalWarning()Z
.end method

.method public abstract onNotifyThermalNormal()V
.end method

.method public abstract onNotifyThermalWarning()V
.end method
