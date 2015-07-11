.class Lcom/sonyericsson/android/camera/view/settings/executor/AutoUploadOnExecutor;
.super Ljava/lang/Object;
.source "AutoUploadOnExecutor.java"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/AutoUploadOnExecutor;->mContext:Landroid/content/Context;

    .line 20
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
    .line 25
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/AutoUploadOnExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->startPluginListActivity(Landroid/content/Context;)V

    .line 26
    return-void
.end method
