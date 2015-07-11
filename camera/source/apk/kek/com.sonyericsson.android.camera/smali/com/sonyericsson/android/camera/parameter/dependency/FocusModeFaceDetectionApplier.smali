.class public Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeFaceDetectionApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "FocusModeFaceDetectionApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 29
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 30
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 41
    return-void
.end method
