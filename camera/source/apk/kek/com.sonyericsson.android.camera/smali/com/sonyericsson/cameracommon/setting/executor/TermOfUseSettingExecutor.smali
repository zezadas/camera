.class public Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;
.super Ljava/lang/Object;
.source "TermOfUseSettingExecutor.java"

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
    .line 31
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor<TCommonSettingKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    return-object v0
.end method

.method private showTermsAndConditions()V
    .locals 4

    .prologue
    .line 44
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor<TCommonSettingKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 45
    .local v0, "act":Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$1;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showTermsAndConditions(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
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
    .line 38
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor<TCommonSettingKey;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TCommonSettingKey;>;"
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->showTermsAndConditions()V

    .line 40
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendSettingsCommon(Ljava/lang/String;)V

    .line 41
    return-void
.end method
