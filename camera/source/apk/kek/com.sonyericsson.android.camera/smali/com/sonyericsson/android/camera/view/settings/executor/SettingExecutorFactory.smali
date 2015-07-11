.class public Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;
.super Ljava/lang/Object;
.source "SettingExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$6;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static createGeotagChangeExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameterManager"    # Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .param p2, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 157
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;-><init>(Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    .line 161
    .local v0, "parameterChanger":Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;
    new-instance v1, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    check-cast p0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    return-object v1
.end method

.method public static createSelectMenuItemExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .param p3, "controller"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;

    invoke-direct {v0, p3, p2, p1}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/AutoUploadOnExecutor;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/AutoUploadOnExecutor;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 186
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;

    invoke-direct {v0, p0, p3}, Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createSelectMenuShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 1
    .param p0, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$5;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    return-object v0
.end method

.method public static createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 1
    .param p0, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .param p1, "itemData"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$4;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    return-object v0
.end method

.method public static createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 1
    .param p0, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .param p1, "itemData"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$2;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    .line 213
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$3;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    goto :goto_0
.end method

.method public static createSettingChangeExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p3, "parameterManager"    # Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .param p4, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            "Lcom/sonyericsson/android/camera/parameter/ParameterManager;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSettingChangeExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;Z)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v0

    return-object v0
.end method

.method public static createSettingChangeExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;Z)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p3, "parameterManager"    # Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .param p4, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .param p5, "requestToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            "Lcom/sonyericsson/android/camera/parameter/ParameterManager;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            "Z)",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;

    invoke-direct {v1, p3, p4}, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;-><init>(Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    .line 80
    .local v1, "parameterChanger":Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 83
    .local v0, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 142
    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p5, :cond_1

    .line 143
    new-instance v2, Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;

    invoke-direct {v2, p4, v0}, Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V

    move-object v0, v2

    .line 145
    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_1
    return-object v0

    .line 85
    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_1
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-eq p2, v2, :cond_0

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    check-cast p0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0, v1, p4}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto :goto_0

    .line 98
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_2
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p2, v2, :cond_0

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;

    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    check-cast p0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    invoke-direct {v0, p0, v2, v1}, Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;ILcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto :goto_0

    .line 107
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;

    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)V

    .line 112
    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto :goto_0

    .line 115
    .restart local p0    # "context":Landroid/content/Context;
    :pswitch_4
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    if-eq p2, v2, :cond_0

    .line 116
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/FaceIdentifyOnExecutor;

    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    check-cast p0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/settings/executor/FaceIdentifyOnExecutor;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto :goto_0

    .line 123
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_5
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;

    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    check-cast p0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto :goto_0

    .line 131
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_6
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BACKLIGHT_HDR:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;

    .end local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    check-cast p0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .restart local v0    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
