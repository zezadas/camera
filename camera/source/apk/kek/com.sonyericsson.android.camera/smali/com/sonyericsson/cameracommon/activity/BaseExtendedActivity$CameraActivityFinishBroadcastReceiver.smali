.class Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraActivityFinishBroadcastReceiver"
.end annotation


# instance fields
.field mBaseExtendedActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .locals 1
    .param p1, "act"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;->mBaseExtendedActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .line 451
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;->mBaseExtendedActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .line 452
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;->mBaseExtendedActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 458
    return-void
.end method
