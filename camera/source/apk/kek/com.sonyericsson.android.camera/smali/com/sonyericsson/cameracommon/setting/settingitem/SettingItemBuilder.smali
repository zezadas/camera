.class public Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
.super Ljava/lang/Object;
.source "SettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDialogItemType:I

.field private mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIconId:I

.field private mIsSelectable:Z

.field private mIsSoundEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLongTextId:I

.field private mSelected:Z

.field private mSubTextId:I

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 19
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 20
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    .line 21
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 25
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 26
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 28
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    .line 30
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 12

    .prologue
    .line 43
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 44
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    iget-boolean v9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V

    .line 68
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 70
    .local v10, "child":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v10    # "child":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    iget-boolean v9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;IIIILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V

    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    goto :goto_0

    .line 74
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelectable(Z)V

    .line 75
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 77
    return-object v0
.end method

.method public dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 112
    return-object p0
.end method

.method public enableSound(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    .line 140
    return-object p0
.end method

.method public executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    .local p1, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 117
    return-object p0
.end method

.method public iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 82
    return-object p0
.end method

.method public item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public longTextId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    .line 97
    return-object p0
.end method

.method public selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    .line 135
    return-object p0
.end method

.method public selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    .line 130
    return-object p0
.end method

.method public subTextId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    .line 92
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 87
    return-object p0
.end method
