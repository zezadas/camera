.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;
.super Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmediatelyAbortListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1300(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/activity/TerminateListener;->terminateApplication()V

    .line 1792
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1796
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1797
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1798
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1799
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1300(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/activity/TerminateListener;->terminateApplication()V

    .line 1800
    const/4 v0, 0x1

    .line 1803
    :cond_0
    return v0
.end method
