.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DialogDismissListener"
.end annotation


# instance fields
.field private mDelegateOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p2, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;->mDelegateOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 953
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 958
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;->mDelegateOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;->mDelegateOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # invokes: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->onCancelMemoryErrorPopup(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$800(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface;)V

    .line 963
    return-void
.end method
