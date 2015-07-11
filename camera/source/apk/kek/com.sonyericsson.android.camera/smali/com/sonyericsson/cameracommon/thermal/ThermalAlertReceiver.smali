.class public Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_COOLED_DOWN_NORMAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

.field private static final ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

.field private static final ACTION_CAMERA_HEATED_OVER_CRITICAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

.field private static final ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

.field private static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

.field private static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

.field private static final CAMERA_CRITICAL:I = 0x25c

.field private static final CAMERA_HEATED_CLOSE_TO_SHUTDOWN:I = 0x26c

.field private static final CAMERA_LOW_TEMP_BURN:I = 0x262

.field private static final CAMERA_NORMAL:I = 0x258

.field private static final CAMERA_WARNING:I = 0x25b

.field private static final INVALID_LOW_TEMP_BURN_TIMEOUT_DURATION:I = -0x1

.field private static final KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC:Ljava/lang/String; = "com.sonyericsson.psm.extra.TIMEOUT_SEC"

.field private static final LOW_TEMP_BURN_TIMER_LIMIT_MILLIS:I = 0x1b7740

.field private static final SHARED_PREFS_KEY_THERMAL_WARNING_DISABLED:Ljava/lang/String; = "THERMAL_WARNING_DISABLED"

.field private static final SYSMON_SERVICE:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice"

.field private static final SYSMON_SERVICE_ACTION:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.ISysmonService"

.field private static final TAG:Ljava/lang/String;

.field private static final VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsAlreadyHighTemperature:Z

.field private mIsBindSysmonService:Z

.field private mIsWarningState:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

.field private final mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

.field private final mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

.field private final mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field private final mServiceConnectionSysmon:Landroid/content/ServiceConnection;

.field private mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

.field private mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .param p4, "pref"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 120
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsWarningState:Z

    .line 139
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 258
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 259
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 260
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 261
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 262
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 263
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    .line 264
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    .line 265
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->checkLowTempBurnTimeoutTimerDuration(II)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$802(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->showDialogCritical()V

    return-void
.end method

.method private changeToNormalState()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsWarningState:Z

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalNormal()V

    .line 601
    return-void
.end method

.method private changeToWarningState()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsWarningState:Z

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarning()V

    .line 606
    return-void
.end method

.method private checkLowTempBurnTimeoutTimerDuration(II)V
    .locals 4
    .param p1, "thermalLevel"    # I
    .param p2, "durationSec"    # I

    .prologue
    .line 186
    if-nez p2, :cond_1

    .line 190
    const/16 v0, 0x262

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0
.end method

.method private checkStartupStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 155
    :sswitch_0
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 162
    :sswitch_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->changeToNormalState()V

    goto :goto_0

    .line 175
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->changeToWarningState()V

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_2
        0x25b -> :sswitch_1
        0x25c -> :sswitch_0
        0x26c -> :sswitch_3
    .end sparse-switch
.end method

.method private finishOnStartup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachHighTemperature(Z)V

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_already_high_txt:I

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessageAndAbort(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 386
    return-void
.end method

.method private getSharedPrefsKeyForThermalWarningDialog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "postfix":Ljava/lang/String;
    const-string v1, "FastCapturingActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraActivityForCaptureOnlyPhoto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraActivityForCaptureOnlyVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    :cond_0
    const-string v0, "CameraActivity"

    .line 454
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THERMAL_WARNING_DISABLED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getThermalWarningString()I
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_info_vzw_txt:I

    .line 483
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_info_txt:I

    goto :goto_0
.end method

.method private showDialogCritical()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachHighTemperature(Z)V

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 490
    return-void
.end method

.method private showDialogWarning()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 409
    .local v9, "inflater":Landroid/view/LayoutInflater;
    if-nez v9, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->thermal_warning_popup_content:I

    invoke-virtual {v9, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 417
    .local v1, "thermalWarningView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->header_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 418
    .local v8, "header":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->getThermalWarningString()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 421
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 422
    .local v7, "checkBox":Landroid/widget/CheckBox;
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->getSharedPrefsKeyForThermalWarningDialog()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 425
    new-instance v5, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;

    invoke-direct {v5, p0, v4}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;)V

    .line 427
    .local v5, "closeListener":Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalWarningDialogCloseListener;
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method


# virtual methods
.method public isAlreadyHighTemperature()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return v0
.end method

.method public isWarningState()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsWarningState:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 314
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_0

    .line 315
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 321
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 327
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-nez v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    if-nez v3, :cond_0

    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 347
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 348
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 350
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 351
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_2

    .line 352
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 354
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->showDialogCritical()V

    goto :goto_0

    .line 355
    :cond_3
    const-string v3, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 357
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->changeToNormalState()V

    goto :goto_0

    .line 358
    :cond_4
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_0

    .line 360
    :cond_5
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 361
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->getSharedPrefsKeyForThermalWarningDialog()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 363
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->showDialogWarning()V

    .line 365
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->changeToWarningState()V

    goto :goto_0

    .line 366
    :cond_7
    const-string v3, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 368
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 369
    const-string v3, "com.sonyericsson.psm.extra.TIMEOUT_SEC"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 372
    .local v2, "durationSec":I
    if-eq v2, v4, :cond_0

    .line 373
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 v4, v2, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto/16 :goto_0

    .line 376
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "durationSec":I
    :cond_8
    const-string v3, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.psm.sysmonservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 301
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method
