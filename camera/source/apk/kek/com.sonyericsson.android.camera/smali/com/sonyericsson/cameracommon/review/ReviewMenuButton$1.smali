.class Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;
.super Ljava/lang/Object;
.source "ReviewMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->select()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 31
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    if-eqz v0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    # invokes: Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->notifySelected(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->access$000(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    .line 37
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    # invokes: Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->notifySelected()V
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->access$100(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V

    goto :goto_0
.end method
