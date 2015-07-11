.class public abstract Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;
.super Ljava/lang/Object;
.source "FocusRectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$1;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;
    }
.end annotation


# instance fields
.field private final mMapFadeOutAnimation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected final mParentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mParentView:Landroid/view/ViewGroup;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected abstract finish()V
.end method

.method public release()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->finish()V

    .line 40
    return-void
.end method

.method protected startFadeoutAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V
    .locals 4
    .param p1, "rectangle"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .prologue
    .line 43
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->rect_image:I

    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "image":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    .line 45
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    if-nez v0, :cond_0

    .line 46
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->focus_indicator_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    check-cast v0, Landroid/view/animation/AlphaAnimation;

    .line 48
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$1;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    return-void
.end method

.method protected stopAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V
    .locals 3
    .param p1, "rectangle"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .prologue
    .line 55
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->rect_image:I

    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "image":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 57
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 61
    :cond_0
    return-void
.end method
