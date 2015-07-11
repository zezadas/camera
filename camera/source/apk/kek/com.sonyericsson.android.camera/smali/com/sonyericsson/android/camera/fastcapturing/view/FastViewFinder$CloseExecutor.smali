.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseExecutor"
.end annotation

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

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1473
    .local p0, "this":Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;, "Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor<TT;>;"
    .local p2, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 1475
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .param p3, "x2"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;

    .prologue
    .line 1469
    .local p0, "this":Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;, "Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1479
    .local p0, "this":Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;, "Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor<TT;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 1480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 1482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateShortcutItemAdapter(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2300(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 1483
    return-void
.end method
