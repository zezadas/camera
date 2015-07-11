.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;
.super Ljava/lang/Object;
.source "SettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    :cond_0
    return-void
.end method
