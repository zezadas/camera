.class Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionSysmon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 214
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-static {p2}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v4

    # setter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$002(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .line 216
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getThermalLevelForCamera()I

    move-result v1

    .line 219
    .local v1, "thermalLevel":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    const-string v4, "sysmon"

    # invokes: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V
    invoke-static {v3, v1, v4}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$100(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;ILjava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getCameraLowTempBurnTimeoutSec()I

    move-result v2

    .line 235
    .local v2, "timeoutSec":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    # invokes: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->checkLowTempBurnTimeoutTimerDuration(II)V
    invoke-static {v3, v1, v2}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$200(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "thermalLevel":I
    .end local v2    # "timeoutSec":I
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sysmon ServiceConnection failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->access$002(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .line 246
    return-void
.end method
