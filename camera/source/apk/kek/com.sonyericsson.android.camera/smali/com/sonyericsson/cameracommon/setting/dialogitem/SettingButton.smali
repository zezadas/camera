.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 31
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_button:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_center_divider_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mCenterDividerRight:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_center_divider_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mCenterDividerLeft:Landroid/view/View;

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mCenterDividerLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;->mCenterDividerRight:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerVertical(Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 92
    return-void
.end method
