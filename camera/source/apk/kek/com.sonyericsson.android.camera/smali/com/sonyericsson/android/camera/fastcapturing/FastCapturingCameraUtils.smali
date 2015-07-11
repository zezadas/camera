.class public Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;
.super Ljava/lang/Object;
.source "FastCapturingCameraUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCapturingMode(Landroid/content/SharedPreferences;I)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "cameraDeviceId"    # I

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 150
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 145
    :pswitch_1
    const-string v0, "FRONT_FAST"

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSettingValueAvailableInSharedPreferences(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;)Z
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "cameraMode"    # I
    .param p2, "cameraDeviceId"    # I
    .param p3, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 99
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->getCapturingMode(Landroid/content/SharedPreferences;I)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    const/4 v2, 0x1

    .line 108
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "cameraMode"    # I
    .param p2, "cameraDeviceId"    # I
    .param p3, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "II",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, "defaultValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    if-nez p4, :cond_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Default value cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-direct {v1, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    invoke-static {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    move-result-object v0

    .line 53
    .local v0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    if-nez v0, :cond_2

    .line 61
    .end local p4    # "defaultValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    :cond_1
    :goto_0
    return-object p4

    .line 56
    .restart local p4    # "defaultValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->shouldClearOnResume(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object p4

    goto :goto_0
.end method

.method public static loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "cameraMode"    # I
    .param p2, "cameraDeviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "II",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;)",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 85
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v3

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->getCapturingMode(Landroid/content/SharedPreferences;I)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-object p3
.end method

.method public static shouldClearOnResume(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 65
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p0, v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static storeCommonParameter(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "spKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->createValueString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "spValue":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method

.method public static storeParameter(Landroid/content/SharedPreferences;ILcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "cameraDeviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "ITT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "parameterValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 127
    .local v0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 129
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->getCapturingMode(Landroid/content/SharedPreferences;I)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->createValueString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "value":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method
