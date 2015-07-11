.class Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;
.super Ljava/lang/Object;
.source "TouchBlockOnExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
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
.field private final mContext:Landroid/content/Context;

.field private final mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 28
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 2
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
    .line 33
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->startCameraTouchBlock(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/TouchBlockOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 36
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendSettingsCommon(Ljava/lang/String;)V

    .line 37
    return-void
.end method
