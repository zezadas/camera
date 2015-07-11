.class public abstract Lcom/sonyericsson/android/camera/parameter/MainParameters;
.super Lcom/sonyericsson/android/camera/parameter/Parameters;
.source "MainParameters.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isOneShotVideo"    # Z
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/Parameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getSoftSkin()Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object v0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .prologue
    .line 31
    return-void
.end method

.method public updatePhotoLight()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 26
    :cond_0
    return-void
.end method
