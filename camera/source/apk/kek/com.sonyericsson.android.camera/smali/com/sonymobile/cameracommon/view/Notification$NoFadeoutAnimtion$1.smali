.class Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 297
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->setAnimationStatus(Z)V

    .line 300
    return-void
.end method
