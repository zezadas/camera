.class public Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;
.super Ljava/lang/Object;
.source "SettingShortcut.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapterObserver:Landroid/database/DataSetObserver;

.field private final mContainer:Landroid/view/ViewGroup;

.field private mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final mIconSize:I

.field private mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

.field private final mItems:Landroid/widget/ListView;

.field private mRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "items"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$2;-><init>(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mAdapterObserver:Landroid/database/DataSetObserver;

    .line 296
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$3;-><init>(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 304
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$4;-><init>(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_icon_background_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mIconSize:I

    .line 48
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut$1;-><init>(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    if-eqz p3, :cond_0

    .line 66
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setScrollBarSize(I)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mIconSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 84
    return-void

    .line 69
    :cond_0
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateItemHeight(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->registerOnItemSelectedListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mRotation:F

    return v0
.end method

.method private computeShortcutIconRect(IILandroid/graphics/Rect;)Z
    .locals 7
    .param p1, "iconIndex"    # I
    .param p2, "iconCount"    # I
    .param p3, "iconRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 201
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .local v1, "shortcutTray":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    :goto_0
    return v2

    .line 205
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, p2

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 206
    .local v0, "container":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, p1

    div-int/2addr v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mIconSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mIconSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 214
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 222
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_1

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 224
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 225
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_1
    return-object v2

    .line 223
    .restart local v1    # "i":I
    .restart local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private registerOnItemSelectedListener()V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 267
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_0

    .line 269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 270
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "selectedItem"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 252
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_2

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 254
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 255
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v2, p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 253
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1

    .line 261
    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 263
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updateItemHeight(I)V
    .locals 2
    .param p1, "containerHeight"    # I

    .prologue
    .line 235
    if-gtz p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 239
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearSelected()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 173
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 184
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 188
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 190
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    invoke-direct {p0, v1, v3, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->computeShortcutIconRect(IILandroid/graphics/Rect;)Z

    move-result v3

    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateItemHeight(I)V

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    .line 101
    .local v0, "selectedItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->registerOnItemSelectedListener()V

    .line 109
    return-void
.end method

.method public setSelected(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "itemData":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 180
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 164
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mRotation:F

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mItems:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public updateAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 142
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    .line 128
    .local v2, "selectedItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 129
    .local v0, "currentAdapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 131
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_1
    if-eqz v2, :cond_2

    .line 135
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateItemHeight(I)V

    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->registerOnItemSelectedListener()V

    goto :goto_0
.end method
