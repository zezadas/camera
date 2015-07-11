.class public Lcom/sonyericsson/android/camera/MasterResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterResetReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterResetReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static resetSharedPrefs(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v2, "com.sonyericsson.android.camera.shared_preferences"

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/MasterResetReceiver;->resetSharedPrefs(Ljava/lang/String;Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v0

    .line 40
    .local v0, "cap":Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/MasterResetReceiver;->resetSharedPrefs(Ljava/lang/String;Landroid/content/Context;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method
