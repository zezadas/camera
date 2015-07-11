.class public Lcom/sonyericsson/android/camera/parameter/SettingsConverter;
.super Ljava/lang/Object;
.source "SettingsConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/SettingsConverter$3;
    }
.end annotation


# static fields
.field private static final KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->KEY_MAP:Ljava/util/Map;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->VALUE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method public static convertAndApplyValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 8
    .param p0, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x0

    .line 119
    .local v1, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    sget-object v6, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->KEY_MAP:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 120
    .local v4, "paramKey":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    if-eqz v4, :cond_0

    .line 124
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->values()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 125
    .local v5, "valueHolder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    .line 126
    .local v2, "holderKey":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    move-object v1, v5

    .line 131
    .end local v2    # "holderKey":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v5    # "valueHolder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    :cond_3
    if-eqz v1, :cond_0

    .line 136
    sget-object v6, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 164
    sget-object v6, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->TAG:Ljava/lang/String;

    const-string v7, "this key is not common value."

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 142
    .local v0, "convertedValue":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v6

    invoke-virtual {v0, v6, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0

    .line 146
    .end local v0    # "convertedValue":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :pswitch_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto/16 :goto_0

    .line 155
    :pswitch_5
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto/16 :goto_0

    .line 158
    :pswitch_6
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto/16 :goto_0

    .line 161
    :pswitch_7
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getCommonSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 1
    .param p0, "param"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    goto :goto_0
.end method

.method private static getParameterValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 4
    .param p0, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 173
    .restart local v2    # "key":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 174
    .local v0, "common":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 178
    .end local v0    # "common":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
