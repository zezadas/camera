.class Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;
.super Ljava/lang/Object;
.source "RotatableToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;->this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;->this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    # getter for: Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->access$100(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;->this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    # getter for: Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->access$000(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    return-void
.end method
