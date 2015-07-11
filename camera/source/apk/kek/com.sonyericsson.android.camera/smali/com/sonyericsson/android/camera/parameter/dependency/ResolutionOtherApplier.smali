.class public Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionOtherApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "ResolutionOtherApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 3
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 30
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 31
    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 33
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 44
    return-void
.end method
