.class Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1;->this$2:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1;->this$2:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->this$1:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$802(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Z)Z

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1;->this$2:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->this$1:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    # invokes: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->showDialogCritical()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$900(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V

    .line 592
    return-void
.end method
