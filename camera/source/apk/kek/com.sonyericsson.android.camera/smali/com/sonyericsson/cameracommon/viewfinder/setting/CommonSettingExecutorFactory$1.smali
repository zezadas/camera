.class Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$1;
.super Ljava/lang/Object;
.source "CommonSettingExecutorFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getExecutor(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->startPluginListActivity(Landroid/content/Context;)V

    .line 43
    return-void
.end method
