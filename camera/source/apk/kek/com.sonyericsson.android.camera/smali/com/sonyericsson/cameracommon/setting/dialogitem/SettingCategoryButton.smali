.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingCategoryButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 28
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 60
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_category_button:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->category:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method private getSelectedItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 144
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 76
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getSelectedItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    .line 80
    .local v2, "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 115
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 122
    .local v3, "textColor":I
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 132
    return-void

    .line 87
    .end local v3    # "textColor":I
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    .line 93
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    instance-of v5, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    if-eqz v5, :cond_4

    .line 94
    const/4 v4, 0x0

    .line 96
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 98
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 103
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 100
    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_2
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getValueText()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 106
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 110
    .end local v4    # "value":Ljava/lang/String;
    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 119
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto/16 :goto_2
.end method
