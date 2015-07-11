.class Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1$1;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_video_rec_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 105
    return-void
.end method
