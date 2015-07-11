.class public Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;
.super Ljava/lang/Object;
.source "LocationSettingsReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mIsGpsLocationAllowed:Z

.field mIsNetworkLocationAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setIsGpsLocationAllowed(Z)V
    .locals 0
    .param p1, "isGpsLocationAllowed"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsGpsLocationAllowed:Z

    .line 60
    return-void
.end method

.method private setIsNetworkLocationAllowed(Z)V
    .locals 0
    .param p1, "isNetworkLocationAllowed"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsNetworkLocationAllowed:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getIsGpsLocationAllowed()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsGpsLocationAllowed:Z

    return v0
.end method

.method public getIsNetworkLocationAllowed()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsNetworkLocationAllowed:Z

    return v0
.end method

.method public readLocationSettings(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "gps"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->setIsGpsLocationAllowed(Z)V

    .line 30
    const-string v0, "network"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->setIsNetworkLocationAllowed(Z)V

    .line 32
    return-void
.end method
