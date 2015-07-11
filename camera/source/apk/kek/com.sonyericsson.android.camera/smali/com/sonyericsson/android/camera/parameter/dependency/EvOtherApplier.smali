.class public Lcom/sonyericsson/android/camera/parameter/dependency/EvOtherApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "EvOtherApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/dependency/EvOtherApplier$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 57
    return-void
.end method

.method private isVideoHdrSupported(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)Z
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 51
    sget-object v1, Lcom/sonyericsson/android/camera/parameter/dependency/EvOtherApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 57
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 55
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 31
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 34
    :cond_0
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/EvOtherApplier;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 47
    :cond_0
    return-void
.end method
