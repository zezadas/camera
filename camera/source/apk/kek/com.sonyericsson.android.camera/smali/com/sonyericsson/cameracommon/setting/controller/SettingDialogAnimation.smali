.class public Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;
.super Ljava/lang/Object;
.source "SettingDialogAnimation.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mTranslateDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_column_height:I

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getPixel(Landroid/content/Context;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    .line 32
    return-void
.end method

.method private getTranslateForAccelerate(FFFF)Landroid/view/animation/TranslateAnimation;
    .locals 3
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 45
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 47
    return-object v0
.end method

.method private getTranslateForDecelerate(FFFF)Landroid/view/animation/TranslateAnimation;
    .locals 3
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 36
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 37
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 86
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->setting_dialog_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    .local v0, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 90
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 92
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 93
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v4, v2, v4, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForAccelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 99
    return-object v1

    .line 95
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v4, v4, v4, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForAccelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 60
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->setting_dialog_fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 63
    .local v0, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 64
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 66
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 67
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v2, v4, v4, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForDecelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 71
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 73
    return-object v1

    .line 69
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v4, v4, v2, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForDecelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
