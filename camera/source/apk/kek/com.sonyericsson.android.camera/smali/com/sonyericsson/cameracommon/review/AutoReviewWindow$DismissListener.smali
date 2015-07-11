.class Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;
.super Ljava/lang/Object;
.source "AutoReviewWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$300(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->restartAutoOffTimer()V

    .line 471
    :cond_1
    return-void
.end method
