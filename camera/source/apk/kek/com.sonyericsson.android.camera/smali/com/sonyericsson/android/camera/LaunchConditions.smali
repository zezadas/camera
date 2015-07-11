.class public Lcom/sonyericsson/android/camera/LaunchConditions;
.super Ljava/lang/Object;
.source "LaunchConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtraOperation:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

.field private mIsCameraDisabled:Z

.field private mIsDeviceError:Z

.field private mIsLaunchedByOtherCamera:Z

.field private mIsOneShot:Z

.field private mLaunchCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field private mOneShotType:Lcom/sonyericsson/android/camera/OneShotType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchConditions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsDeviceError:Z

    .line 45
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    .line 49
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mLaunchCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 51
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsOneShot:Z

    .line 53
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsLaunchedByOtherCamera:Z

    .line 55
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsCameraDisabled:Z

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/OneShotType;->NONE:Lcom/sonyericsson/android/camera/OneShotType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mOneShotType:Lcom/sonyericsson/android/camera/OneShotType;

    return-void
.end method


# virtual methods
.method public clear(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->setIsLaunchedByOtherCamera(Z)V

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->setExtraOperation(Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;)V

    .line 37
    return-void
.end method

.method public getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    return-object v0
.end method

.method public getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mLaunchCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method

.method public getOneShotType()Lcom/sonyericsson/android/camera/OneShotType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mOneShotType:Lcom/sonyericsson/android/camera/OneShotType;

    return-object v0
.end method

.method public isCameraDisabled()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsCameraDisabled:Z

    return v0
.end method

.method public isDeviceError()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsCameraDisabled:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsDeviceError:Z

    goto :goto_0
.end method

.method public isLaunchedByOtherCamera()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsLaunchedByOtherCamera:Z

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsOneShot:Z

    return v0
.end method

.method public setCameraDisabled(Z)V
    .locals 0
    .param p1, "isCameraDisabled"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsCameraDisabled:Z

    .line 141
    return-void
.end method

.method public setDeviceError(Z)V
    .locals 0
    .param p1, "failed"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsDeviceError:Z

    .line 72
    return-void
.end method

.method public setExtraOperation(Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;)V
    .locals 0
    .param p1, "extraOperation"    # Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    .line 94
    return-void
.end method

.method public setIsLaunchedByOtherCamera(Z)V
    .locals 0
    .param p1, "isLaunchedByOtherCamera"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsLaunchedByOtherCamera:Z

    .line 122
    return-void
.end method

.method public setIsOneShot(Z)V
    .locals 0
    .param p1, "isOneShot"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mIsOneShot:Z

    .line 112
    return-void
.end method

.method public setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mLaunchCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 104
    return-void
.end method

.method public setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V
    .locals 0
    .param p1, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 82
    return-void
.end method

.method public setOneShotType(Lcom/sonyericsson/android/camera/OneShotType;)V
    .locals 0
    .param p1, "type"    # Lcom/sonyericsson/android/camera/OneShotType;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditions;->mOneShotType:Lcom/sonyericsson/android/camera/OneShotType;

    .line 133
    return-void
.end method
