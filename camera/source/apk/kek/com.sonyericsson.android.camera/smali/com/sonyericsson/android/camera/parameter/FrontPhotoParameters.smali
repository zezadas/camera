.class public Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;
.super Lcom/sonyericsson/android/camera/parameter/FrontParameters;
.source "FrontPhotoParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters$1;
    }
.end annotation


# instance fields
.field public mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isOneShotVideo"    # Z
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/FrontParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBurst:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 194
    .local v0, "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    if-ne v0, v1, :cond_0

    .line 195
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 197
    .end local v0    # "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    :cond_0
    return-object v0
.end method

.method public getChangedValues()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 90
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :pswitch_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_1
    return-object v2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTargetParameters()Ljava/util/EnumMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 116
    .local v4, "values":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 117
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    .line 119
    .local v3, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v5, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 156
    invoke-virtual {v4, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :pswitch_1
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    if-nez v5, :cond_0

    .line 122
    invoke-virtual {v4, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :pswitch_2
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    if-nez v5, :cond_0

    .line 128
    invoke-virtual {v4, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :pswitch_3
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    if-nez v5, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    .line 137
    .local v0, "burstShot":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 138
    invoke-virtual {v4, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v0    # "burstShot":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    :pswitch_4
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {v4, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    .end local v2    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v3    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    return-object v4

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected prepare()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 49
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mWhiteBalance:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMetering:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 79
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 180
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 171
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 189
    return-void
.end method

.method protected updateSelectability()V
    .locals 5

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getConfig()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->isOneShotVideo:Z

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 64
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 65
    return-void
.end method
