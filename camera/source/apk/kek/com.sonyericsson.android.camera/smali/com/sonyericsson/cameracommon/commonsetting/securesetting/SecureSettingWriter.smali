.class public Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;
.super Ljava/lang/Object;
.source "SecureSettingWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "key.fcc.status"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->saveToSettingsSecureProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "com.sonymobile.camera.quick_launch"

    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->saveToSettingsSecureProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static saveToSettingsSecureProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    .local v1, "isSuccess":Z
    if-nez v1, :cond_0

    .line 46
    .end local v1    # "isSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->TAG:Ljava/lang/String;

    const-string v3, "Can not access to Settings.Secure provider"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
