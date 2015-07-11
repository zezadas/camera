.class public Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoUploadPluginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$1;,
        Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    .line 41
    .local v0, "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    if-nez p2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->auto_upload_plugin_list_item:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;

    invoke-direct {v2, v5}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$1;)V

    .line 47
    .local v2, "viewHolder":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->auto_upload_plugin_list_item_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 49
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->auto_upload_plugin_list_item_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 51
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->auto_upload_plugin_list_item_check_mark:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;->checkMark:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v3, v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;->checkMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_upload_enable_icn:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    return-object p2

    .line 56
    .end local v2    # "viewHolder":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter$ViewHolder;
    goto :goto_0

    .line 61
    :cond_1
    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_upload_disable_icn:I

    goto :goto_1
.end method
