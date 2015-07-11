.class Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoFocusResultWrapper"
.end annotation


# instance fields
.field private final mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .prologue
    .line 2793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mSuccess:Z

    .line 2795
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .line 2796
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 2798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2799
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mSuccess:Z

    .line 2800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .line 2801
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    if-nez v0, :cond_0

    .line 2806
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mSuccess:Z

    .line 2808
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->isFocused()Z

    move-result v0

    goto :goto_0
.end method

.method public isFocused(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    if-nez v0, :cond_0

    .line 2815
    const/4 v0, 0x0

    .line 2817
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;->mResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->isFocused(I)Z

    move-result v0

    goto :goto_0
.end method
