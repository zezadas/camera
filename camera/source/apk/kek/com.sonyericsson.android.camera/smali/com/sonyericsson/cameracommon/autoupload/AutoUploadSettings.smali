.class public Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;
.super Ljava/lang/Object;
.source "AutoUploadSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_NEW_PICTURE:Ljava/lang/String; = "com.sonymobile.android.camera.action.NEW_PICTURE"

.field public static final ACTION_DISABLE_UPLOADER:Ljava/lang/String; = "com.sonymobile.android.camera.action.ACTION_DISABLE_UPLOADER"

.field public static final ACTION_ENABLE_UPLOADER:Ljava/lang/String; = "com.sonymobile.android.camera.action.ACTION_ENABLE_UPLOADER"

.field public static final ACTION_NOTIFY_UPLOADER_SETTING:Ljava/lang/String; = "com.sonymobile.android.camera.action.ACTION_NOTIFY_UPLOADER_SETTING"

.field public static final ACTION_REQUEST_NOTIFY_UPLOADER_SETTING:Ljava/lang/String; = "com.sonymobile.android.camera.action.ACTION_REQUEST_NOTIFY_UPLOADER_SETTING"

.field private static final AUTOUPLOAD_OFF:I = 0x2

.field private static final AUTOUPLOAD_ON:I = 0x1

.field private static final PACKAGE_CLASS_NAME:Ljava/lang/String; = "package_class_name"

.field public static final PERMISSION_AUTO_UPLOAD:Ljava/lang/String; = "com.sonymobile.permission.SOMC_AUTO_UPLOADER"

.field public static final PERMISSION_CAMERA:Ljava/lang/String; = "com.sonymobile.permission.SOMC_CAMERA"

.field private static final PLUGIN_LIST_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.cameracommon.autoupload.AutoUploadPluginListActivity"

.field private static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

.field private mPluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->sInstance:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;-><init>(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->sInstance:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    return-object v0
.end method

.method public static isPermissionGranted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sonymobile.permission.SOMC_AUTO_UPLOADER"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.android.camera.action.ACTION_NOTIFY_UPLOADER_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sonymobile.permission.SOMC_CAMERA"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->TAG:Ljava/lang/String;

    const-string v3, "registerReceiver failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sendBroadcastIntent(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.android.camera.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string v1, "com.sonymobile.permission.SOMC_AUTO_UPLOADER"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 242
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->TAG:Ljava/lang/String;

    const-string v2, "AutoUpload is already unbinded."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableAutoUpload(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->registerReceiver(Landroid/content/Context;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.android.camera.action.ACTION_DISABLE_UPLOADER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const-string v1, "com.sonymobile.permission.SOMC_AUTO_UPLOADER"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public declared-synchronized isAvailable()Z
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized request(Landroid/content/Context;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->registerReceiver(Landroid/content/Context;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.android.camera.action.ACTION_REQUEST_NOTIFY_UPLOADER_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-string v1, "com.sonymobile.permission.SOMC_AUTO_UPLOADER"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 145
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected startPluginActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageClassName"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v0, "notifyIntent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.android.camera.action.ACTION_ENABLE_UPLOADER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const-string v1, "package_class_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "com.sonymobile.permission.SOMC_AUTO_UPLOADER"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public declared-synchronized startPluginListActivity(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 178
    .local v3, "pluginSum":I
    if-le v3, v5, :cond_1

    .line 179
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sonyericsson.cameracommon.autoupload.AutoUploadPluginListActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 183
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 186
    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 189
    .local v2, "isActivityAvailable":Z
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isActivityAvailable":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    if-ne v3, v5, :cond_0

    .line 193
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->startPluginActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    .end local v3    # "pluginSum":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
