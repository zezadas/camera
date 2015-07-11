.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;
.super Ljava/lang/Object;
.source "SettingDialogBasic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    # setter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;
    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->access$002(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/view/View;)Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 62
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 63
    return-void
.end method
