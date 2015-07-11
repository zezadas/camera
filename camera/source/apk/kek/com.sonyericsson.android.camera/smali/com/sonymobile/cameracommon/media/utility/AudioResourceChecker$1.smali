.class final Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->checkAudioResourceAndShowErrorDialogIfNecessary(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    new-instance v1, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1$1;-><init>(Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    return-void
.end method
