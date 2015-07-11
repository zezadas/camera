.class Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;
.super Ljava/lang/Object;
.source "CloseExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V
    .locals 0
    .param p1, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;, "Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor<TT;>;"
    .local p2, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 24
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;, "Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor<TT;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/CloseExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 30
    return-void
.end method
