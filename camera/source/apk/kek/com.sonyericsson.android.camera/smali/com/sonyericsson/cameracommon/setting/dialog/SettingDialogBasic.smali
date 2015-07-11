.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
.super Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.source "SettingDialogBasic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ITEM_DIVIDER_HEIGHT:I

.field private final TITLE_HEIGHT:I

.field protected mGridView:Landroid/widget/GridView;

.field private mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

.field private mSelectedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->title_text_height:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->divider_height:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->TITLE_HEIGHT:I

    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->divider_height:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method private convertRectInLandscape(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 267
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 268
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 269
    .local v2, "x":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 270
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 271
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 272
    .local v0, "height":I
    add-int v4, v2, v1

    add-int v5, v3, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    return-void
.end method

.method private getItemNum()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method private getPixel(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSelectorPadding()I
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 221
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTitleHeight()I
    .locals 2

    .prologue
    .line 133
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "titleView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->TITLE_HEIGHT:I

    .line 137
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisibleTitle()Z
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeHeight(I)I
    .locals 6
    .param p1, "numColumn"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectorPadding()I

    move-result v1

    .line 149
    .local v1, "selectorPadding":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "ctx":Landroid/content/Context;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    int-to-float v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 159
    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public computeMaxHeight(I)I
    .locals 4
    .param p1, "numRows"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectorPadding()I

    move-result v0

    .line 170
    .local v0, "selectorPadding":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public computeWidth(I)I
    .locals 2
    .param p1, "numColumn"    # I

    .prologue
    .line 184
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_shortcut_2_column_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_shortcut_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    return-object v0
.end method

.method public getNumRows(I)I
    .locals 4
    .param p1, "screenHeight"    # I

    .prologue
    .line 210
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 213
    .local v0, "contentBodyHeight":I
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    return v1
.end method

.method public getSelectedItemRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->convertRectInLandscape(Landroid/graphics/Rect;)V

    .line 260
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->onFinishInflate()V

    .line 51
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_gridview:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    .line 52
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_scroll_fading_edge_length:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v0

    .line 53
    .local v0, "fadingEdgeLength":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 55
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->isVisibleTitle()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setRoundTopItemBackground(Z)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 94
    :cond_1
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 251
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->requestLayout()V

    .line 234
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->setSensorOrientation(I)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 242
    return-void
.end method

.method public setSettingDialogParams(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;)V
    .locals 6
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "ctx":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 70
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getBackgroundId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 5
    .param p1, "textId"    # I

    .prologue
    const/4 v4, 0x0

    .line 109
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_title:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "title":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 119
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setRoundTopItemBackground(Z)V

    .line 122
    :cond_0
    return-void
.end method
