.class public Lcom/sonyericsson/android/camera/parameter/NormalParameters;
.super Lcom/sonyericsson/android/camera/parameter/MainParameters;
.source "NormalParameters.java"


# instance fields
.field private mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
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
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/MainParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v0
.end method

.method public getTargetParameters()Ljava/util/EnumMap;
    .locals 5
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
    .line 72
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 74
    .local v3, "values":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 75
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    .line 77
    .local v2, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    if-eq v1, v4, :cond_0

    .line 78
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    return-object v3
.end method

.method protected prepare()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 43
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .prologue
    .line 153
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 130
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 139
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 111
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 114
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 117
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 118
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 120
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 121
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V
    .locals 5
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .prologue
    .line 88
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 89
    .local v2, "previousSetting":Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    if-eq p1, v2, :cond_0

    .line 90
    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 91
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 94
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V

    .line 97
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 98
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 103
    .end local v0    # "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .end local v1    # "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 148
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .prologue
    .line 174
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .prologue
    .line 164
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 159
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 169
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .prologue
    .line 179
    return-void
.end method

.method protected updateSelectability()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    if-eq v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 53
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 55
    .end local v0    # "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 56
    .restart local v0    # "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mLocalResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 68
    return-void
.end method
