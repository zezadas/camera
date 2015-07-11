.class Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/Notification;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/Notification;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/Notification;Lcom/sonymobile/cameracommon/view/Notification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/Notification$1;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;-><init>(Lcom/sonymobile/cameracommon/view/Notification;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    .line 234
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->setAnimationStatus(Z)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->setAnimationStatus(Z)V

    .line 248
    return-void
.end method
