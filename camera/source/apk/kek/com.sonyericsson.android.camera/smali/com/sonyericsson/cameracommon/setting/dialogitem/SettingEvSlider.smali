.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingEvSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBottomPadding:I

.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

.field private mSelectedPosition:I

.field private final mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->ev_slider_memory_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mTopPadding:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->ev_slider_memory_bottom_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mBottomPadding:I

    .line 52
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_ev_slider:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mBackground:Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->indicator:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->scale_number:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mScaleNumber:Landroid/widget/ImageView;

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mBackground:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$2;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getSelectedItemDisplyPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(FI)V

    return-void
.end method

.method private getMemoryStepSize()F
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mTopPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mBottomPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getSelectedItemDisplyPosition()I
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getValueItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 115
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getValueItem(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    .line 116
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mSelectedPosition:I

    .line 118
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mSelectedPosition:I

    .line 122
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_1
    return v2

    .line 114
    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getValueItem(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getValueItemCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method

.method private getValueItemCount()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private updateIndicator(FI)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "action"    # I

    .prologue
    .line 142
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mTopPadding:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getMemoryStepSize()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 143
    .local v0, "position":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getValueItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(I)V

    .line 151
    return-void
.end method

.method private updateIndicator(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getMemoryStepSize()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mTopPadding:I

    int-to-float v5, v5

    add-float v0, v4, v5

    .line 156
    .local v0, "currentposition":F
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v2, v0, v4

    .line 158
    .local v2, "indicatorY":F
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 160
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mSelectedPosition:I

    if-eq p1, v4, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 163
    .local v3, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_0

    .line 166
    .end local v3    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getValueItem(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 170
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mSelectedPosition:I

    .line 171
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setUiOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 175
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mBackground:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_ev_level_dialog_scale_land_icn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mScaleNumber:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_ev_level_dialog_scale_number_land_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->setting_ev_indicator_selector_land:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mBackground:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_ev_level_dialog_scale_port_icn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mScaleNumber:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_ev_level_dialog_scale_number_port_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->setting_ev_indicator_selector_port:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->getSelectedItemDisplyPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;->updateIndicator(I)V

    .line 106
    return-void
.end method
