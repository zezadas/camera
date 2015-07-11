.class public Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;
.super Landroid/app/ListActivity;
.source "AutoUploadPluginListActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "com.sonymobile.camera.autoupload.PLUGIN_UPLOAD_SETTING"

.field private static final META_DATA_ICON:Ljava/lang/String; = "com.sonymobile.camera.autoupload.icon"

.field private static final META_DATA_TITLE:Ljava/lang/String; = "com.sonymobile.camera.autoupload.title"

.field private static final TAG:Ljava/lang/String; = "AutoUploadPluginListActivity"


# instance fields
.field private mAutoUploadPluginAdapter:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;

.field private mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mPlugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onAutoUploadSettingNotified(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageClassName"    # Ljava/lang/String;
    .param p3, "autoUploadSetting"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .prologue
    .line 128
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mPlugins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    .line 131
    .local v2, "pluginItem":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->getPackageClassName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "pkgClsInPlugins":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    sget-object v3, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->ON:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    if-ne p3, v3, :cond_1

    .line 138
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->setChecked(Z)V

    goto :goto_0

    .line 139
    :cond_1
    sget-object v3, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->OFF:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    if-ne p3, v3, :cond_2

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->setChecked(Z)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 146
    .end local v1    # "pkgClsInPlugins":Ljava/lang/String;
    .end local v2    # "pluginItem":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mAutoUploadPluginAdapter:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v10, Lcom/sonyericsson/cameracommon/R$layout;->auto_upload_plugin_list:I

    invoke-virtual {p0, v10}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->setContentView(I)V

    .line 56
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.sonymobile.camera.autoupload.PLUGIN_UPLOAD_SETTING"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v7, "pluginIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 59
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mPlugins:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 61
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 62
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 66
    .local v3, "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 68
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 69
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 70
    new-instance v4, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    const-string v10, "com.sonymobile.camera.autoupload.title"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.sonymobile.camera.autoupload.icon"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v11, v12}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    .local v4, "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    move-object v3, v4

    .line 79
    .end local v4    # "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v8    # "res":Landroid/content/res/Resources;
    .restart local v3    # "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mPlugins:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v10, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mPlugins:Ljava/util/List;

    invoke-direct {v10, p0, v11, v12}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v10, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mAutoUploadPluginAdapter:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;

    .line 85
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mAutoUploadPluginAdapter:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;

    new-instance v11, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity$1;

    invoke-direct {v11, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity$1;-><init>(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;)V

    invoke-virtual {v10, v11}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;->sort(Ljava/util/Comparator;)V

    .line 91
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->mAutoUploadPluginAdapter:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginAdapter;

    invoke-virtual {p0, v10}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 116
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    .line 119
    .local v0, "item":Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->getPackageClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->startPluginActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 109
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->cancel(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 100
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->request(Landroid/content/Context;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;)V

    .line 101
    return-void
.end method
