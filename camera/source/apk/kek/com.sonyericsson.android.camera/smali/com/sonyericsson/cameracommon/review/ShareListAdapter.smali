.class public Lcom/sonyericsson/cameracommon/review/ShareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mContext:Landroid/content/Context;

    .line 44
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    .line 47
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 48
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 49
    .local v3, "size":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 52
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 53
    .local v1, "firstElement":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 54
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 55
    .local v0, "element":Landroid/content/pm/ResolveInfo;
    iget v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_1

    .line 57
    :cond_0
    :goto_1
    if-ge v2, v3, :cond_1

    .line 58
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "element":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .end local v1    # "firstElement":Landroid/content/pm/ResolveInfo;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 131
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->text:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, "text":Landroid/widget/TextView;
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 135
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .local v1, "label":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 137
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 139
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;->bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V

    .line 121
    return-object v0

    .line 118
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method
