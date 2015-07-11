.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;
.super Ljava/lang/Object;
.source "SettingIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 51
    :cond_0
    return-void
.end method
