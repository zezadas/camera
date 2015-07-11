.class final Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;
.super Ljava/lang/Object;
.source "SettingExecutorFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectMenuItemExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$controller:Lcom/sonyericsson/android/camera/view/settings/SettingController;

.field final synthetic val$group:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field final synthetic val$key:Lcom/sonyericsson/android/camera/configuration/ParameterKey;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$controller:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$group:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$key:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$controller:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$controller:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$group:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$1;->val$key:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    .line 195
    return-void
.end method
