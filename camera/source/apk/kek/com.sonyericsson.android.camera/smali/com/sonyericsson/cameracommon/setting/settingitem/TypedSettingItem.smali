.class public Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;
.super Ljava/lang/Object;
.source "TypedSettingItem.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
    }
.end annotation


# instance fields
.field private final mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDialogItemType:I

.field private final mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIconId:I

.field private mIsSelectable:Z

.field private mIsSelected:Z

.field private final mIsSoundEnabled:Z

.field private final mLongTextId:I

.field private mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

.field private final mSubTextId:I

.field private final mText:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IIIILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V
    .locals 2
    .param p2, "iconId"    # I
    .param p3, "labelId"    # I
    .param p4, "subTextId"    # I
    .param p5, "longTextId"    # I
    .param p6, "additionalTextForAccessibility"    # Ljava/lang/String;
    .param p7, "dialogItemType"    # I
    .param p9, "isSoundEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p8, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 55
    iput p3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 58
    iput p7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 59
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 60
    iput-boolean p9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 64
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    .line 65
    iput p5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    .line 66
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 68
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V
    .locals 2
    .param p2, "iconId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "subTextId"    # I
    .param p5, "longTextId"    # I
    .param p6, "additionalTextForAccessibility"    # Ljava/lang/String;
    .param p7, "dialogItemType"    # I
    .param p9, "isSoundEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p8, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 85
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 86
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    .line 87
    iput p5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    .line 88
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 89
    iput p7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 90
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 91
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 92
    iput-boolean p9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 96
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 97
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 100
    return-void
.end method


# virtual methods
.method public compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/4 v1, 0x0

    .line 227
    instance-of v2, p1, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    .line 229
    .local v0, "other":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<*>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 231
    .end local v0    # "other":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<*>;"
    :cond_0
    return v1
.end method

.method public compareData(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 236
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/16 v3, 0x20

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "description":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 141
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_not_configurable_txt:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDialogItemType()I
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    return v0
.end method

.method public getLongText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 128
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 116
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 104
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 245
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    return v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;->onItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    if-nez v0, :cond_1

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    goto :goto_0
.end method

.method public setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .prologue
    .line 222
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 223
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 183
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 184
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 178
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 179
    return-void
.end method
