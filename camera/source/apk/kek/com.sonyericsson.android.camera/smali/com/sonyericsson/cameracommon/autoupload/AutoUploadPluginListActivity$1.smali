.class Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity$1;
.super Ljava/lang/Object;
.source "AutoUploadPluginListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity$1;->this$0:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
    .param p2, "rhs"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginListActivity$1;->compare(Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;)I

    move-result v0

    return v0
.end method
