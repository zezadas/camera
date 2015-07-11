.class Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalWarningDialogCloseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$502(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 398
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$502(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 393
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$502(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 403
    return-void
.end method
