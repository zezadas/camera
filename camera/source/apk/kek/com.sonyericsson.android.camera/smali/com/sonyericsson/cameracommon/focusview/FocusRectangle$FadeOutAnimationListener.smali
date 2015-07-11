.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;
.super Ljava/lang/Object;
.source "FocusRectangle.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 71
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 73
    .local v1, "key":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 74
    .local v2, "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 75
    .local v3, "value":Landroid/view/animation/Animation;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_0

    .line 80
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    .end local v2    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .end local v3    # "value":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 67
    return-void
.end method
