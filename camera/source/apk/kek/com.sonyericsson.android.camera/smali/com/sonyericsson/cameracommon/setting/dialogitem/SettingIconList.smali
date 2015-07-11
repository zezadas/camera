.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingIconList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    .line 44
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_icon_list:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    .line 45
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->list:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->updateSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    return-void
.end method

.method private createIcon(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "image":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 106
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 107
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->setting_item_icon_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 112
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-object v1
.end method

.method private updateSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 6
    .param p1, "selectedItem"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 84
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    if-eq v2, p1, :cond_0

    .line 85
    invoke-interface {v2, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_0

    .line 89
    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 93
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 95
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 92
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 100
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setUiOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 76
    .local v0, "angle":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 52
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v2, v5, v6

    .line 55
    .local v2, "itemWidth":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 57
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->createIcon(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Landroid/widget/ImageView;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 63
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 64
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 66
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "view":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
