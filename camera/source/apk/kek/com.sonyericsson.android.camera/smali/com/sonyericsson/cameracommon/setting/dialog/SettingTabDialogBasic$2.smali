.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;
.super Ljava/lang/Object;
.source "SettingTabDialogBasic.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 3
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 157
    .local v1, "testItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    if-eq v1, p1, :cond_0

    .line 158
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "testItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    return-void
.end method
