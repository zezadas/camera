.class public Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingReader;
.super Ljava/lang/Object;
.source "SecureSettingReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.sonymobile.camera.quick_launch"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 26
    .local v1, "secureSetting":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 36
    .end local v1    # "secureSetting":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingReader;->TAG:Ljava/lang/String;

    const-string v3, "[SecurityException] Can not access to Settings.Secure provider"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
