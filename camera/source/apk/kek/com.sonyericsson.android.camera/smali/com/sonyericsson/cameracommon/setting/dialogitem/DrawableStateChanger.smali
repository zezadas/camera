.class Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
.super Ljava/lang/Object;
.source "SettingDialogItem.java"


# static fields
.field private static final DRAWABLE_LEVEL_BOTTOM:I = 0x2

.field private static final DRAWABLE_LEVEL_NORMAL:I = 0x0

.field private static final DRAWABLE_LEVEL_TOP:I = 0x1


# instance fields
.field private mBackground:Landroid/view/View;

.field private mDividerBottom:Landroid/view/View;

.field private mDividerLeft:Landroid/view/View;

.field private mDividerRight:Landroid/view/View;

.field private final mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    .line 76
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    .line 77
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    .line 79
    return-void
.end method

.method private getDrawbleLevel(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)I
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->top:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->bottom:Z

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x2

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->getDrawbleLevel(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 129
    :cond_2
    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .locals 0
    .param p1, "background"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    .line 94
    return-object p0
.end method

.method public dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .locals 0
    .param p1, "bottom"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    .line 83
    return-object p0
.end method

.method public dividerVertical(Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    .line 89
    return-object p0
.end method
