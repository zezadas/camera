.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;
.super Ljava/lang/Object;
.source "SettingCategorySwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    if-eqz p2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->access$000(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_0
.end method
