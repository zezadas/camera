.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
.super Ljava/lang/Object;
.source "GeotagLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsDisabled:Z

.field private mLastLocation:Landroid/location/Location;

.field public final mProvider:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "geotagManager"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 47
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const-wide/16 v2, 0x0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 63
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 97
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 83
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 112
    if-nez p2, :cond_0

    .line 114
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 142
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 143
    return-void
.end method
