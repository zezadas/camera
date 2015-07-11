.class Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraActivityFinishBroadcastReceiver"
.end annotation


# instance fields
.field mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 1
    .param p1, "act"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 1543
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1544
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1545
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    .line 1551
    return-void
.end method
