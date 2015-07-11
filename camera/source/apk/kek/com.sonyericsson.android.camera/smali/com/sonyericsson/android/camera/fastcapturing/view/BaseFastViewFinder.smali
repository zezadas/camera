.class public interface abstract Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
.super Ljava/lang/Object;
.source "BaseFastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;
    }
.end annotation


# virtual methods
.method public abstract checkSurfaceIsPreparedOrNot()V
.end method

.method public abstract closeCapturingModeSelector()V
.end method

.method public abstract ensureVideoAutoReviewSettingHasLoaded()V
.end method

.method public abstract fadeoutCounter()V
.end method

.method public abstract getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
.end method

.method public abstract getRequestId(Z)I
.end method

.method public abstract getTouchCapture()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
.end method

.method public abstract getVideoAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
.end method

.method public abstract hideHudIcons()V
.end method

.method public abstract isCapturingModeSelectorOpened()Z
.end method

.method public abstract isHeadUpDesplayReady()Z
.end method

.method public abstract isSetupHeadupDisplayInvoked()Z
.end method

.method public abstract isTouchFocus()Z
.end method

.method public abstract onCaptureDone()V
.end method

.method public abstract onShutterDone(Z)V
.end method

.method public abstract removeEarlyThumbnailView()V
.end method

.method public abstract requestInflate(Landroid/view/LayoutInflater;)V
.end method

.method public varargs abstract sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
.end method

.method public abstract setCameraDevice(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
.end method

.method public abstract setContentView()V
.end method

.method public abstract setRecordingOrientation(I)V
.end method

.method public abstract setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
.end method

.method public abstract startCaptureFeedbackAnimation()V
.end method

.method public abstract startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end method

.method public abstract startHideThumbnail()V
.end method

.method public abstract updateGeotagIcon()V
.end method
