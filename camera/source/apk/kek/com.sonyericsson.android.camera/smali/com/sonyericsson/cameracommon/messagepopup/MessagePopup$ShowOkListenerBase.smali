.class abstract Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShowOkListenerBase"
.end annotation


# instance fields
.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p2, "ok"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1628
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1629
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1630
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->removeReferenceToDialog()V

    .line 1640
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1647
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->removeReferenceToDialog()V

    .line 1648
    return-void
.end method

.method protected abstract removeReferenceToDialog()V
.end method
