.class Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoFadeoutAnimtion"
.end annotation


# instance fields
.field private mSceneTextRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/Notification;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/view/Notification;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;-><init>(Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    .line 302
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 311
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$300(Lcom/sonymobile/cameracommon/view/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->cancel()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/Notification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$attr;->scene_fade_out_delay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/view/Notification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->scene_fade_out_duration:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/view/Notification;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->setAnimationStatus(Z)V

    .line 317
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    return-void
.end method
