.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingValueButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 32
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 55
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_value_button:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    .line 63
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v0

    .line 89
    .local v0, "isMirrored":Z
    if-eqz v0, :cond_1

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 99
    return-void

    .line 73
    .end local v0    # "isMirrored":Z
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 92
    .restart local v0    # "isMirrored":Z
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method
