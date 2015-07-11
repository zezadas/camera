.class Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/settings/SettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingDialogControllerImpl"
.end annotation


# instance fields
.field mController:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V
    .locals 0
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;->mController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/view/settings/SettingController$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    return-void
.end method


# virtual methods
.method public closeCurrentDialog()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;->mController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$100(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 93
    return-void
.end method

.method public closeDialogs(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;->mController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->access$100(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 98
    return-void
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "settingAdapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;->mController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
