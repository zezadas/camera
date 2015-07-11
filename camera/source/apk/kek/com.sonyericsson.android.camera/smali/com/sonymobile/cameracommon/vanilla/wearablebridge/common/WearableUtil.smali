.class public Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableUtil;
.super Ljava/lang/Object;
.source "WearableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServiceAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableUtil;->isGooglePlayServiceAvailable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isGooglePlayServiceAvailable(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionCode"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 22
    .local v0, "statusCode":I
    if-nez v0, :cond_0

    const v1, 0x5e2978

    if-lt v1, p1, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 26
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
