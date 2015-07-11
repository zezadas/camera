.class public Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;
.super Ljava/lang/Object;
.source "TouchBlockSettingExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CommonSettingKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<TCommonSettingKey;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .prologue
    .line 26
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor<TCommonSettingKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 29
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TCommonSettingKey;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor<TCommonSettingKey;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TCommonSettingKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->startCameraTouchBlock(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeDialogs(Z)V

    .line 36
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendSettingsCommon(Ljava/lang/String;)V

    .line 37
    return-void
.end method
