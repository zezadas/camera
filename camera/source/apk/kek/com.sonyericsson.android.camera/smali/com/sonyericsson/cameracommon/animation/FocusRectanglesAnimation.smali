.class public Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;,
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;,
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    }
.end annotation


# instance fields
.field private final mAnimationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/animation/Animation;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFocusInAnimationObject:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

.field private mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

.field private mFocusInAnimationTouch:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

.field private final mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private final mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private final mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private mTouchDownAnimation:Landroid/view/animation/AnimationSet;

.field private mTouchUpAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_single:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_touch:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 79
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_object:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    return-object v0
.end method

.method private getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_indicator_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private playAfFadeOutAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 144
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method private playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-object p2
.end method

.method private playTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    return-object p2
.end method

.method private playTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    return-object p2
.end method


# virtual methods
.method public cancelAfFocusAnimationObject(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 238
    :cond_1
    return-void
.end method

.method public cancelAfFocusAnimationSingle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_1

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 250
    :cond_1
    return-void
.end method

.method public cancelAfFocusAnimationTouch(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 262
    :cond_1
    return-void
.end method

.method public getFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 166
    if-nez p2, :cond_0

    .line 167
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;-><init>(Landroid/view/View;)V

    iget v1, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    iget v2, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setFromSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    iget v1, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iget v2, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setToSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    iget v1, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setDuration(I)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->create()Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object p2

    .line 175
    :goto_0
    return-object p2

    .line 173
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->recycle()V

    goto :goto_0
.end method

.method public getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-object v0
.end method

.method public getTouchAnimation(Landroid/view/View;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationTouch:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-object v0
.end method

.method public getTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_touch_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .end local p2    # "animation":Landroid/view/animation/AnimationSet;
    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 185
    .restart local p2    # "animation":Landroid/view/animation/AnimationSet;
    :cond_0
    return-object p2
.end method

.method public getTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_touch_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .end local p2    # "animation":Landroid/view/animation/AnimationSet;
    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 195
    .restart local p2    # "animation":Landroid/view/animation/AnimationSet;
    :cond_0
    return-object p2
.end method

.method public playAfFadeOutAnimationObject(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method public playAfFadeOutAnimationSingle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public playAfFadeOutAnimationTouch(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method public playAfFocusInAnimationObject(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationObject:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationObject:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .line 125
    return-void
.end method

.method public playAfFocusInAnimationSingle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .line 97
    return-void
.end method

.method public playAfFocusInAnimationTouch(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationTouch:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationTouch:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .line 116
    return-void
.end method

.method public playTouchDownAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchDownAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchDownAnimation:Landroid/view/animation/AnimationSet;

    .line 102
    return-void
.end method

.method public playTouchUpAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchUpAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchUpAnimation:Landroid/view/animation/AnimationSet;

    .line 107
    return-void
.end method
