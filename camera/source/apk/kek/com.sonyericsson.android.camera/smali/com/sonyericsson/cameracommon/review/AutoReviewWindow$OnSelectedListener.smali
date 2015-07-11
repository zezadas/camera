.class Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;
.super Ljava/lang/Object;
.source "AutoReviewWindow.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V
    .locals 1
    .param p1, "button"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->cancelDialog()V

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->restartAutoOffTimer()V

    .line 484
    :cond_0
    return-void
.end method

.method public onSelected(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .locals 1
    .param p1, "button"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    .param p2, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$500(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setCurrentDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->restartAutoOffTimer()V

    .line 495
    :cond_0
    return-void
.end method
