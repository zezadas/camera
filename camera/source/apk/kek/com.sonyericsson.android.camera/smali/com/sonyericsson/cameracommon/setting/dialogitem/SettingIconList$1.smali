.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;
.super Ljava/lang/Object;
.source "SettingIconList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->createIcon(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

.field final synthetic val$item:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;->val$item:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList$1;->val$item:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->updateSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;->access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 119
    :cond_0
    return-void
.end method
