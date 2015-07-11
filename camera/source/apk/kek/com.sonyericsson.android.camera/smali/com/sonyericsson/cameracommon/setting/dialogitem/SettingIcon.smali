.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;
    }
.end annotation


# static fields
.field private static final ICON_FADE_SWITCH_ANIMATION_DURATION:I = 0xfa

.field private static final ICON_FADE_SWITCH_ANIMATION_OFFSET:I = 0x32

.field private static final PRESSED_COLOR_FILTER:I = 0x66000000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v2, -0x2

    .line 62
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_icon_background_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_icon_background_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIconRes:I

    .line 82
    return-void
.end method

.method private createIconAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 152
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    div-float v6, v3, v4

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    div-float v8, v3, v4

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 157
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 159
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSoundEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIconRes:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIconRes:I

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->createIconAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIconRes:I

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->setting_shortcut_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 144
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/high16 v2, 0x66000000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iput v4, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIconRes:I

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
