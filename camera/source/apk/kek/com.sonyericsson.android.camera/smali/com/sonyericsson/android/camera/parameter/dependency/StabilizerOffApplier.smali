.class public Lcom/sonyericsson/android/camera/parameter/dependency/StabilizerOffApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "StabilizerOffApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrSupportedWith(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 35
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1

    .line 36
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->isAlwaysChangeToAutoToResolveDependency()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->isExclusiveWith(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 54
    return-void
.end method
