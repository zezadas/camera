.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
.super Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.source "SettingTabDialogBasic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

.field private mNumberOfTabs:I

.field private final mTabBodyAdapterObserver:Landroid/database/DataSetObserver;

.field private mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mNumberOfTabs:I

    .line 88
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabBodyAdapterObserver:Landroid/database/DataSetObserver;

    .line 152
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    return-object v0
.end method

.method private getPixel(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private registerOnItemSelectedListener()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    return-object v0
.end method

.method public getSelectedItemRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    .line 141
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getTop()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    const/4 v3, 0x1

    .line 149
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 137
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->getSelected()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v0

    return-object v0
.end method

.method public numberOfTabs()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mNumberOfTabs:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->onFinishInflate()V

    .line 47
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_gridview:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    .line 48
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_scroll_fading_edge_length:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getPixel(I)I

    move-result v0

    .line 49
    .local v0, "fadingEdgeLength":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 52
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->tabs:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    .line 53
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabBodyAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabBodyAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->invalidate()V

    .line 85
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 130
    return-void
.end method

.method public setNumberOfTabs(I)V
    .locals 0
    .param p1, "numberOfTabs"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mNumberOfTabs:I

    .line 174
    return-void
.end method

.method public setOnSelectedTabListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V

    .line 69
    return-void
.end method

.method public setSelectedTab(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 61
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->requestLayout()V

    .line 113
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->setSensorOrientation(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 121
    return-void
.end method

.method public varargs setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 1
    .param p1, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 57
    return-void
.end method
