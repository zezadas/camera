.class Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;
.super Ljava/lang/Object;
.source "TermOfUseSettingExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->showTermsAndConditions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor.2;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;->this$0:Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 55
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor.2;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;->this$0:Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;

    # getter for: Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->access$000(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeDialogs(Z)V

    .line 56
    return-void
.end method
