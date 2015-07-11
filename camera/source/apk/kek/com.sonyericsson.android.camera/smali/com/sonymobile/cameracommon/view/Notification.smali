.class public Lcom/sonymobile/cameracommon/view/Notification;
.super Landroid/widget/RelativeLayout;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/Notification$1;,
        Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;,
        Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;,
        Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;,
        Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Notification"


# instance fields
.field private mAnimating:Z

.field private mConditionIcon:Landroid/widget/ImageView;

.field private mConditionText:Landroid/widget/TextView;

.field private mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

.field private mSceneIcon:Landroid/widget/ImageView;

.field private mSceneText:Landroid/widget/TextView;

.field private mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/view/Notification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return v0
.end method

.method private setOrientationConditionText()V
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 357
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOrientationSceneText()V
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    sget-object v1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    if-eq v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 343
    sget-object v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 347
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelSceneTextAnimation()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->cancel()V

    .line 221
    return-void
.end method

.method protected createSceneTextAnimation()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;-><init>(Lcom/sonymobile/cameracommon/view/Notification;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    .line 206
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->create()V

    .line 207
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->releaseSceneTextAnimation()V

    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_icon:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    .line 71
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_text:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_icon:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_text:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->createSceneTextAnimation()V

    .line 76
    return-void
.end method

.method public onMacroStatusChanged(ZLcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "sceneMode"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .prologue
    const/4 v2, 0x4

    .line 86
    if-eqz p1, :cond_1

    .line 87
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recognised_condition:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_macro_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_focus_mode_macro_txt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 109
    return-void

    .line 101
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    if-ne p2, v0, :cond_0

    .line 102
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onModeChanged(IZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "isOneShot"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 178
    if-eqz p2, :cond_0

    .line 179
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 184
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 189
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRecognisedConditionChanged(Lcom/sonymobile/cameracommon/view/RecognizedCondition;)V
    .locals 5
    .param p1, "condition"    # Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getIconId()I

    move-result v0

    .line 146
    .local v0, "iconId":I
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getTextId()I

    move-result v1

    .line 147
    .local v1, "textId":I
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->recognised_condition:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    if-lez v0, :cond_1

    .line 149
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :goto_0
    if-lez v1, :cond_2

    .line 155
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 164
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 165
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onRecognisedSceneChanged(Lcom/sonymobile/cameracommon/view/RecognizedScene;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/cameracommon/view/RecognizedScene;

    .prologue
    .line 115
    sget-object v2, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    iput-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .line 116
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getIconId()I

    move-result v0

    .line 117
    .local v0, "iconId":I
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getTextId()I

    move-result v1

    .line 118
    .local v1, "textId":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 119
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 139
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getSceneMode()Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    goto :goto_0

    .line 136
    :cond_1
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected releaseSceneTextAnimation()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->release()V

    .line 211
    return-void
.end method

.method protected setAnimationStatus(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    if-ne v0, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    goto :goto_0
.end method

.method public setSensorOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 330
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 332
    .local v0, "degree":F
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 333
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationSceneText()V

    .line 334
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 335
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationConditionText()V

    .line 336
    return-void
.end method

.method protected startSceneTextAnimation()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->start()V

    .line 216
    return-void
.end method

.method public updateLayout()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->requestLayout()V

    .line 172
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 173
    return-void
.end method
