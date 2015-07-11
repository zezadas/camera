.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;
.super Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p2, "ok"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 1656
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1657
    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "x0"    # Landroid/content/DialogInterface;
    .param p2, "x1"    # I

    .prologue
    .line 1654
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1654
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected removeReferenceToDialog()V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1662
    return-void
.end method
