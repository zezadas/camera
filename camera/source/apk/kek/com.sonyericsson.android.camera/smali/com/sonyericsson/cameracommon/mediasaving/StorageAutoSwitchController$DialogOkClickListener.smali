.class Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;
.super Ljava/lang/Object;
.source "StorageAutoSwitchController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogOkClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->onStorageAutoSwitch(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Landroid/content/DialogInterface;)V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->access$102(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 46
    return-void
.end method
