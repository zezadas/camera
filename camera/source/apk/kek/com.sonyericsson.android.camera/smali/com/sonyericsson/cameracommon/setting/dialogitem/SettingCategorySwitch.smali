.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingCategorySwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 28
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 63
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_category_switch:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mDivider:Landroid/view/View;

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->switch_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/widget/Switch;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method private getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method

.method private getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/Switch;->setChecked(Z)V

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/Switch;->setEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/Switch;->setChecked(Z)V

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/Switch;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 96
    return-void
.end method
