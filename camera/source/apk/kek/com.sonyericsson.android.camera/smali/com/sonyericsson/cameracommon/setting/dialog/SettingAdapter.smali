.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private mItemHeight:I

.field private mSetRoundBackgroundTop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;",
            "Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    .line 46
    return-void
.end method

.method private generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "itemPosition"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 202
    const/4 v6, 0x1

    .line 203
    .local v6, "columnCount":I
    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Landroid/widget/GridView;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    div-int/2addr v0, v6

    add-int/lit8 v8, v0, -0x1

    .line 208
    .local v8, "lastRow":I
    div-int v10, p2, v6

    .line 209
    .local v10, "thisRow":I
    add-int/lit8 v7, v6, -0x1

    .line 210
    .local v7, "lastColumn":I
    rem-int v9, p2, v6

    .line 212
    .local v9, "thisColumn":I
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    if-eqz v2, :cond_1

    if-nez v10, :cond_1

    move v2, v5

    :goto_0
    if-ne v10, v8, :cond_2

    move v3, v5

    :goto_1
    if-nez v9, :cond_3

    move v4, v5

    :goto_2
    if-ne v9, v7, :cond_4

    :goto_3
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;-><init>(IZZZZ)V

    return-object v0

    :cond_1
    move v2, v11

    goto :goto_0

    :cond_2
    move v3, v11

    goto :goto_1

    :cond_3
    move v4, v11

    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_3
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    .line 192
    :goto_0
    return v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 109
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_1
    return-object v1

    .line 107
    .restart local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSelectedPosition()I
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 122
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_1
    return v0

    .line 120
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 158
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    move-result-object v2

    .line 161
    .local v2, "params":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    .line 167
    .local v1, "itemView":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    if-eq v3, v0, :cond_0

    .line 170
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->setItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 172
    :cond_0
    invoke-virtual {v1, p3, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 173
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object v3

    .line 183
    :goto_0
    return-object v3

    .line 179
    .end local v1    # "itemView":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v3, v0, p3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;->create(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    move-result-object v1

    .line 180
    .restart local v1    # "itemView":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1, p3, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 181
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;->getDialogItemTypeCount()I

    move-result v0

    return v0
.end method

.method public selectByData(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "itemData":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    .line 80
    .local v2, "target":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 82
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1

    .line 90
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_2
    return-void
.end method

.method public selectByItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 3
    .param p1, "target"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 104
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 98
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {p1, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1
.end method

.method public setItemHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    if-eq v0, p1, :cond_0

    .line 62
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 65
    :cond_0
    return-void
.end method

.method public setRoundTopItemBackground(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    if-eq v0, p1, :cond_0

    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 75
    :cond_0
    return-void
.end method
