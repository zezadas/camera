.class public abstract Lcom/sonyericsson/android/camera/parameter/FrontParameters;
.super Lcom/sonyericsson/android/camera/parameter/Parameters;
.source "FrontParameters.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isOneShotVideo"    # Z
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/Parameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    return-object v0
.end method

.method public getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    return-object v0
.end method

.method public getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .prologue
    .line 38
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    .prologue
    .line 33
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .prologue
    .line 43
    return-void
.end method

.method protected updatePhotoLight()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 28
    :cond_0
    return-void
.end method
