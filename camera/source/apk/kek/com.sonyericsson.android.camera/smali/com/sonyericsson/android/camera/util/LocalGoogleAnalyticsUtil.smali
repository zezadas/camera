.class public Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;
.super Ljava/lang/Object;
.source "LocalGoogleAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;,
        Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;


# instance fields
.field private final mSettingsPhoto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettingsVideo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sInstance:Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->mSettingsPhoto:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->mSettingsVideo:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sInstance:Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    return-object v0
.end method

.method private getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isFastCapturing"    # Z

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "screen":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    sget-object v1, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 73
    if-eqz p2, :cond_0

    .line 74
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FASTCAPTURING_MAIN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 79
    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 82
    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FASTCAPTURING_FRONT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 91
    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSettingsMap(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)Ljava/util/Map;
    .locals 3
    .param p1, "settingsParam"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "settings":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;>;"
    sget-object v1, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonymobile$cameracommon$googleanalytics$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_0
    return-object v0

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->mSettingsPhoto:Ljava/util/Map;

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->mSettingsVideo:Ljava/util/Map;

    .line 199
    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendEventSettings(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V
    .locals 8
    .param p1, "settingsCategory"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v3

    .line 236
    .local v3, "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;>;"
    if-nez v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 245
    .local v2, "settingsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 246
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;

    .line 247
    .local v4, "values":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 250
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->toString()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, p1, v7, v5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "settingsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;>;"
    .end local v4    # "values":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V
    .locals 5
    .param p2, "settingsCategory"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;",
            "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "newValues":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .line 214
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    .line 216
    .local v2, "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;>;"
    if-nez v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;

    .line 222
    .local v0, "currentValues":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_1
    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v3

    # setter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$002(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    .end local v0    # "currentValues":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_2
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->mSettingsPhoto:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->mSettingsVideo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    return-void
.end method

.method public sendEventSettings()V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V

    .line 261
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V

    .line 262
    return-void
.end method

.method public sendView(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .param p3, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p4, "isFastCapturing"    # Z

    .prologue
    .line 103
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V

    .line 105
    return-void
.end method

.method public sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 2
    .param p1, "launchedBy"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;
    .param p2, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p3, "isFastCapturing"    # Z

    .prologue
    .line 108
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V

    .line 109
    return-void
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 6
    .param p1, "basis"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "change"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p3, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 113
    new-instance v1, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .local v1, "newValues":Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;, "Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 118
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->hasChange()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V

    goto :goto_0

    .line 150
    :pswitch_1
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V

    goto :goto_0

    .line 158
    :pswitch_2
    sget-object v2, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 160
    :pswitch_4
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V

    goto :goto_0

    .line 163
    :pswitch_5
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;)V

    goto :goto_0

    .line 178
    :pswitch_6
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 158
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
