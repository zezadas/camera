.class public Lcom/sonyericsson/android/camera/view/Indicators;
.super Landroid/widget/RelativeLayout;
.source "Indicators.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Indicators"


# instance fields
.field private mAnimating:Z

.field private mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mPhotoSmileCapture:Landroid/widget/ImageView;

.field private mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mVideoSmileCapture:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mAnimating:Z

    .line 51
    return-void
.end method

.method private setSmileCaptureVisible(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "smileView"    # Landroid/widget/ImageView;
    .param p2, "isVisible"    # Z

    .prologue
    .line 215
    if-eqz p2, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->invalidate()V

    .line 225
    return-void

    .line 222
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hideSelfTimerIndicator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    .line 153
    return-void
.end method

.method public onCameraSelfTimerEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->updateLayout()V

    .line 166
    return-void
.end method

.method public onCameraSelftimerSettingsChanged(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZI)V
    .locals 3
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "value"    # Z
    .param p3, "resourceId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->onCameraSelfTimerEnd()V

    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setImageResource(I)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    const v0, 0x7f0f0033

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 60
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 62
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mPhotoSmileCapture:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSmileCapture:Landroid/widget/ImageView;

    .line 64
    return-void
.end method

.method public onPhotoSmileCaptureSettingsChanged(ZI)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "resourceId"    # I

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mPhotoSmileCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSmileCaptureVisible(Z)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mPhotoSmileCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 133
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSmileCaptureVisible(Z)V

    goto :goto_0
.end method

.method public onVideoSelfTimerEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->updateLayout()V

    .line 173
    return-void
.end method

.method public onVideoSelftimerSettingsChanged(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZI)V
    .locals 3
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "value"    # Z
    .param p3, "resourceId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->onVideoSelfTimerEnd()V

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setImageResource(I)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    goto :goto_0
.end method

.method public onVideoSmileCaptureSettingsChanged(ZI)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "resourceId"    # I

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSmileCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSmileCaptureVisible(Z)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSmileCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 147
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSmileCaptureVisible(Z)V

    goto :goto_0
.end method

.method protected setAnimationStatus(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mAnimating:Z

    if-ne v0, p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mAnimating:Z

    goto :goto_0
.end method

.method public setPhotoSelfTimerCaptureVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_0
.end method

.method public setPhotoSmileCaptureVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mPhotoSmileCapture:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/Indicators;->setSmileCaptureVisible(Landroid/widget/ImageView;Z)V

    .line 206
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 193
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 195
    .local v0, "degree":F
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mCameraSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mPhotoSmileCapture:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSmileCapture:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 202
    return-void
.end method

.method public setVideoSelfTimerCaptureVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSelfTimer:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_0
.end method

.method public setVideoSmileCaptureVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Indicators;->mVideoSmileCapture:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/Indicators;->setSmileCaptureVisible(Landroid/widget/ImageView;Z)V

    .line 210
    return-void
.end method

.method public showSelfTimerIndicator()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSelfTimerCaptureVisible(Z)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSelfTimerCaptureVisible(Z)V

    .line 159
    return-void
.end method

.method protected updateLayout()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->requestLayout()V

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/Indicators;->invalidate()V

    .line 181
    return-void
.end method
