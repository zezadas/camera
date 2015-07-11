.class final Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$5;
.super Ljava/lang/Object;
.source "SettingExecutorFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectMenuShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
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
        "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$settingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$5;->val$settingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

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
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/view/settings/SettingGroup;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory$5;->val$settingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->openMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    .line 239
    return-void
.end method
