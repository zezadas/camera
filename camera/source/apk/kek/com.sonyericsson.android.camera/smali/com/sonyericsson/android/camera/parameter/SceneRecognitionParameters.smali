.class public Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;
.super Lcom/sonyericsson/android/camera/parameter/MainParameters;
.source "SceneRecognitionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isOneShotVideo"    # Z
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/MainParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 38
    return-void
.end method


# virtual methods
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
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mHolders:Ljava/util/Map;

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

    .line 114
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 128
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :pswitch_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->isOneShotVideo:Z

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_1
    return-object v2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTargetParameters()Ljava/util/EnumMap;
    .locals 6
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
    .line 138
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 140
    .local v3, "values":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 141
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    .line 143
    .local v2, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v4, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 176
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :pswitch_1
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->isOneShotVideo:Z

    if-nez v4, :cond_0

    .line 146
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :pswitch_2
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->isOneShotVideo:Z

    if-nez v4, :cond_0

    .line 152
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :pswitch_3
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->isOneShotVideo:Z

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :pswitch_4
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->isOneShotVideo:Z

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    return-object v3

    .line 143
    nop

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
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 98
    .local v0, "applier":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 100
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 103
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->updateSelectability()V

    .line 93
    return-void
.end method

.method protected updateSelectability()V
    .locals 6

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mWhiteBalance:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v4, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCaptureFrameShape:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->getResolution(I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 57
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 59
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v3, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMetering:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 65
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->isOneShotVideo:Z

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getConfig()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v2

    iget v3, v2, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    .line 80
    .local v1, "isSteadyShotSupported":Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v2

    iget v3, v2, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    .line 83
    .local v0, "isIntelligentActiveSupported":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 88
    :goto_1
    return-void

    .line 70
    .end local v0    # "isIntelligentActiveSupported":Z
    .end local v1    # "isSteadyShotSupported":Z
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getConfig()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0

    .line 86
    .restart local v0    # "isIntelligentActiveSupported":Z
    .restart local v1    # "isSteadyShotSupported":Z
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_1
.end method
