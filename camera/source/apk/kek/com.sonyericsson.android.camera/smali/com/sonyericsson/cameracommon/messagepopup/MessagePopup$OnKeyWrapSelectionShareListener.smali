.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;
.super Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnKeyWrapSelectionShareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .locals 0

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;

    .prologue
    .line 1278
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1281
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1285
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
