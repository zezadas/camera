.class Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;
.super Ljava/lang/Object;
.source "SettingExecutorFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getOpenValueSelectDialogExecutor(Ljava/lang/Object;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<TKey;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

.field final synthetic val$dialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V
    .locals 0

    .prologue
    .line 36
    .local p0, "this":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory.1;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;->val$dialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TKey;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory.1;"
    .local p1, "key":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->access$100(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;->val$dialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    # invokes: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->generateChildrenAdapter(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-static {v1, p1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V

    .line 41
    return-void
.end method
