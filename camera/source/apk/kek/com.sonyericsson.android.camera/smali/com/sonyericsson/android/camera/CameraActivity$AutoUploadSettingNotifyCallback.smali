.class Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUploadSettingNotifyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/CameraActivity$1;

    .prologue
    .line 1787
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onAutoUploadSettingNotified(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageClassName"    # Ljava/lang/String;
    .param p3, "autoUploadSetting"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .prologue
    .line 1793
    sget-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->UNKNOWN:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    if-ne p3, v0, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->updateAutoUpload()V

    .line 1805
    sget-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->ON:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    if-ne v0, p3, :cond_2

    .line 1806
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 1810
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->onApplied()V

    .line 1813
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$500(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/CameraWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->commit()V

    goto :goto_0

    .line 1808
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_1
.end method
