.class Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoUploadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;->this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v5, "package_class_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "packageClassName":Ljava/lang/String;
    const-string v5, "com.sonymobile.android.camera.action.ACTION_NOTIFY_UPLOADER_SETTING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 79
    const-string v5, "result_code"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, "resultNum":I
    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->UNKNOWN:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .line 81
    .local v1, "autoUploadSetting":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    const/4 v2, 0x0

    .line 83
    .local v2, "isAvailable":Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 84
    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->ON:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .line 85
    const/4 v2, 0x1

    .line 86
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;->this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    # getter for: Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->access$000(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;->this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    # getter for: Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->access$100(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;->this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    # getter for: Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mListener:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->access$100(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;

    move-result-object v5

    invoke-interface {v5, p1, v3, v1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;->onAutoUploadSettingNotified(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v1    # "autoUploadSetting":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    .end local v2    # "isAvailable":Z
    .end local v4    # "resultNum":I
    :cond_1
    monitor-exit p0

    return-void

    .line 87
    .restart local v1    # "autoUploadSetting":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    .restart local v2    # "isAvailable":Z
    .restart local v4    # "resultNum":I
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 88
    :try_start_1
    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->OFF:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .line 89
    const/4 v2, 0x1

    .line 90
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$1;->this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    # getter for: Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->mPluginMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->access$000(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "autoUploadSetting":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    .end local v2    # "isAvailable":Z
    .end local v3    # "packageClassName":Ljava/lang/String;
    .end local v4    # "resultNum":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
