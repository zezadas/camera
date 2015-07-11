.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMessageOnUiThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field final synthetic val$duration:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;II)V
    .locals 0

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iput p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;->val$resId:I

    iput p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;->val$resId:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;->val$duration:I

    sget-object v3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1508
    return-void
.end method
