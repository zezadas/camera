.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowThermalListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkMandatoryListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableContinuouslyUsedListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP:F = 14.0f

.field public static final NO_RESOURCE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MessagePopup"

.field private static final TERMINATE_WAIT_TIME:I = 0xfa0


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private final mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

.field private final mMessageHandler:Landroid/os/Handler;

.field private mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

.field private mSensorOrientation:I

.field private mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

.field private mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

.field private mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStorageErrorPopupIsError:Z

.field private mStorageErrorPopupTextId:I

.field private mStoreProgressDialog:Landroid/app/AlertDialog;

.field private mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

.field private mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/activity/TerminateListener;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "terminateApplication"    # Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 78
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    .line 83
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 98
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 104
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 107
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 110
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 113
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 116
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 119
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .line 133
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    .line 143
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 144
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->onCancelMemoryErrorPopup(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private cancelMemoryErrorPopup()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->cancel()V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->cancel()V

    .line 928
    :cond_1
    return-void
.end method

.method private createDialogOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 646
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 648
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 654
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_1

    .line 667
    :goto_0
    return-object v1

    .line 658
    :cond_1
    if-eq p2, v3, :cond_2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 659
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 660
    :cond_3
    if-eq p1, v3, :cond_4

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 661
    :cond_4
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 662
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 663
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 664
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 665
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 667
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method private getStringFieldNameForDebug(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1966
    const-string v0, ""

    return-object v0
.end method

.method private getThermalCriticalString()I
    .locals 1

    .prologue
    .line 1062
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shutting_down_vzw_txt:I

    .line 1065
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shutting_down_txt:I

    goto :goto_0
.end method

.method private lazyAbort()V
    .locals 4

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1785
    return-void
.end method

.method private onCancelMemoryErrorPopup(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 931
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    .line 936
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2

    .line 940
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 944
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->notifyCloseDialog()V

    .line 945
    return-void
.end method

.method private sendGoogleAnalyticsCameraNotAvailableEvent()V
    .locals 1

    .prologue
    .line 1425
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCameraNotAvailableFailedToOpen()V

    .line 1426
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendCameraNotAvailableEvent()V

    .line 1427
    return-void
.end method

.method private setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1751
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1752
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1753
    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1754
    return-void
.end method

.method private setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "buttonId"    # I

    .prologue
    .line 1760
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1761
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1762
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1764
    :cond_0
    return-void
.end method

.method private show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 2
    .param p1, "builder"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .prologue
    .line 305
    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 308
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 309
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    .line 310
    return-object v0
.end method

.method private showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "builder"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v1, :cond_2

    .line 1028
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1029
    .local v0, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1033
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1036
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v1
.end method

.method private showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "listener"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1529
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1530
    const/4 v1, 0x0

    .line 1540
    :goto_0
    return-object v1

    .line 1533
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1534
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1535
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1536
    :cond_2
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1537
    invoke-virtual {v0, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1538
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1540
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cancelMemoryErrorPopup(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 918
    :cond_2
    return-void
.end method

.method public cancelMemoryErrorPopup(Z)V
    .locals 1
    .param p1, "onlyError"    # Z

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 897
    if-eqz p1, :cond_1

    .line 898
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    if-nez v0, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    goto :goto_0
.end method

.method public closeMessage()V
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 1775
    :cond_0
    return-void
.end method

.method public createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public isMemoryErrorPopupOpened()Z
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemoryErrorPopupOpened(Landroid/content/DialogInterface;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x1

    .line 977
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v0

    .line 983
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_2

    .line 984
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyCloseDialog()V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;->onCloseStorageDialog()V

    .line 1983
    return-void
.end method

.method protected notifyOpenDialog()V
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;->onOpenStorageDialog()V

    .line 1975
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 3
    .param p1, "changed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 1336
    const/4 v0, 0x2

    .line 1337
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1343
    const/4 v0, 0x2

    .line 1346
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setSensorOrientation(I)V

    .line 1347
    return-void

    .line 1339
    :pswitch_0
    const/4 v0, 0x1

    .line 1340
    goto :goto_0

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 168
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 173
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 179
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 183
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 187
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 191
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 195
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 197
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_7

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 200
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 205
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_9

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 210
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 213
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_a

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 215
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public releaseContext()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 228
    return-void
.end method

.method public setMessagePopupStateListener(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .line 153
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_8

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 268
    :cond_a
    return-void
.end method

.method public setStorageDialogStateListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    .line 160
    return-void
.end method

.method public showCameraDisabledMessage()V
    .locals 3

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1454
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1457
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1458
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_use_of_camera_not_authorized_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1459
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1461
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showCameraDisabledMessageOk()V
    .locals 8

    .prologue
    .line 1469
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1470
    .local v6, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_use_of_camera_not_authorized_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v7

    .line 1477
    .local v7, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    return-void
.end method

.method public showCameraNotAvailableError(ZZ)V
    .locals 0
    .param p1, "isCameraDisabled"    # Z
    .param p2, "isCancelable"    # Z

    .prologue
    .line 1992
    if-eqz p1, :cond_1

    .line 1993
    if-eqz p2, :cond_0

    .line 1994
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessageOk()V

    .line 2005
    :goto_0
    return-void

    .line 1996
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    goto :goto_0

    .line 1999
    :cond_1
    if-eqz p2, :cond_2

    .line 2000
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessageOk()V

    goto :goto_0

    .line 2002
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_0
.end method

.method public showConfirmLocationAccess(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isUsedForStartupGeotagCheck"    # Z
    .param p3, "onAllowClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onDenyClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 2013
    if-nez p1, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2017
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 2018
    .local v11, "inflater":Landroid/view/LayoutInflater;
    if-eqz v11, :cond_0

    .line 2024
    if-eqz p2, :cond_2

    .line 2025
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_remember_geotag_title_txt:I

    .line 2026
    .local v3, "titleId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->dialog_remember_geo_tag_content:I

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2028
    .local v2, "contentView":Landroid/view/View;
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->check_box_do_not_show_again:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 2029
    .local v10, "cb":Landroid/widget/CheckBox;
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2035
    .end local v10    # "cb":Landroid/widget/CheckBox;
    :goto_1
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->text_cta_dialog_subtitle:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2036
    .local v13, "subtitle":Landroid/widget/TextView;
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->text_cta_location_info:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2038
    .local v12, "info":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2039
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_cta_access_txt:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_application_name_txt:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2042
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2043
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2049
    :goto_2
    const/4 v4, 0x0

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_cta_allow_txt:I

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_cta_deny_txt:I

    move-object v1, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0

    .line 2031
    .end local v2    # "contentView":Landroid/view/View;
    .end local v3    # "titleId":I
    .end local v12    # "info":Landroid/widget/TextView;
    .end local v13    # "subtitle":Landroid/widget/TextView;
    :cond_2
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cta_title_txt:I

    .line 2032
    .restart local v3    # "titleId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->dialog_confirm_location_access_content:I

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "contentView":Landroid/view/View;
    goto :goto_1

    .line 2045
    .restart local v12    # "info":Landroid/widget/TextView;
    .restart local v13    # "subtitle":Landroid/widget/TextView;
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2046
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public showDeviceErrorMessage()V
    .locals 3

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1411
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1415
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1416
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_device_not_available_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1417
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1419
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->sendGoogleAnalyticsCameraNotAvailableEvent()V

    goto :goto_0
.end method

.method public showDeviceErrorMessageOk()V
    .locals 8

    .prologue
    .line 1436
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1437
    .local v6, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_device_not_available_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v7

    .line 1445
    .local v7, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    return-void
.end method

.method public showDisclaimer(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 11
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1819
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1820
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-nez v10, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->disclaimer_content:I

    invoke-virtual {v10, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1826
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 1827
    .local v9, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_consent_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1845
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1846
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_accept_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_decline_txt:I

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1857
    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1858
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setPositiveButtonEnabled(Z)V

    .line 1860
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public showErrorOkAndCancelExit(IZIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "title"    # I
    .param p2, "needAlertIcon"    # Z
    .param p3, "msg"    # I
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "can"    # I
    .param p7, "canClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p9, "keyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    const/4 v3, -0x1

    .line 1153
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v2, :cond_5

    .line 1154
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1157
    .local v1, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1158
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1159
    const/4 v2, 0x0

    .line 1173
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :goto_0
    return-object v2

    .line 1162
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .restart local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :cond_0
    if-eq p1, v3, :cond_1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1163
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1164
    :cond_2
    if-eq p3, v3, :cond_3

    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1165
    :cond_3
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1166
    if-eq p6, v3, :cond_4

    invoke-virtual {v0, p6, p7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1167
    :cond_4
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1168
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1169
    invoke-virtual {v0, p9}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1170
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1173
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showErrorOkExit(IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 11
    .param p1, "title"    # I
    .param p2, "needAlertIcon"    # Z
    .param p3, "msg"    # I
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p7, "keyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 1116
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorOkAndCancelExit(IZIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v10

    .line 1126
    .local v10, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    return-object v10
.end method

.method public showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 329
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 339
    :goto_0
    return-object v1

    .line 333
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 334
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 335
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 336
    :cond_2
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 338
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 339
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showLaunchSettingAppDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1392
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 1394
    :cond_0
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_both_off_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v7, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    invoke-direct {v7, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v8, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    invoke-direct {v8, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1402
    return-void
.end method

.method public showMemoryError(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 5
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "isError"    # Z

    .prologue
    const/4 v2, 0x0

    .line 828
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-object v2

    .line 833
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_3

    .line 834
    iget v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    if-ne v3, p1, :cond_2

    .line 837
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0

    .line 839
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 843
    :cond_3
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    .line 848
    .local v1, "ok":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 849
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 854
    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 855
    :cond_4
    new-instance v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;

    invoke-direct {v3, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 856
    new-instance v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;-><init>()V

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 857
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 858
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 860
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->notifyOpenDialog()V

    .line 861
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    new-instance v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;

    invoke-direct {v4, p0, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 862
    iput p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    .line 863
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    .line 865
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showMemoryErrorAndAbort(II)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "title"    # I

    .prologue
    .line 877
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 879
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 880
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 885
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 886
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 887
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showMessageOnUiThread(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1510
    return-void
.end method

.method public showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 6
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_0

    .line 1562
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;

    invoke-direct {v5, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .local v5, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1563
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1565
    .end local v5    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 1
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 613
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createDialogOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-object v1

    .line 699
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 704
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 709
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 710
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 711
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 712
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 716
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 718
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCancelMsg(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 1916
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return-object v1

    .line 1922
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_2

    .line 1923
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1926
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1927
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1932
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1933
    :cond_3
    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1934
    :cond_4
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1935
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1937
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1938
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1939
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1941
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCancelStorage(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p9, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 584
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createDialogOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;

    invoke-direct {v1, p0, p9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 594
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->notifyOpenDialog()V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 739
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v1, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 741
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 742
    const/4 v1, 0x0

    .line 754
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :goto_0
    return-object v1

    .line 745
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 746
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 747
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 748
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;

    invoke-direct {v1, p0, p5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 751
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 754
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCustomViewContinuouslyUsed(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 789
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 791
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 795
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_1

    .line 809
    :goto_0
    return-object v1

    .line 799
    :cond_1
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 800
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 801
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 802
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableContinuouslyUsedListener;

    invoke-direct {v1, p0, p5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableContinuouslyUsedListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 807
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 809
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkMandatory(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 6
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1590
    :cond_0
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkMandatoryListener;

    invoke-direct {v5, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkMandatoryListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .local v5, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1591
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1592
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showRecordingSizeLimitError()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1086
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1087
    const/4 v1, 0x0

    .line 1093
    :goto_0
    return-object v1

    .line 1090
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1091
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_mms_rec_size_limit_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1092
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1093
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1313
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->inflate(Landroid/app/Activity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 1307
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setDuration(I)V

    .line 1308
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setTextResId(I)V

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->show()V

    goto :goto_0
.end method

.method public showRotatableToastMessageAndAbort(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 1325
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1326
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V

    .line 1327
    return-void
.end method

.method public showShareSelection(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "titleResource"    # I
    .param p2, "selectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 1211
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1213
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1216
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1217
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1218
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1219
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;

    invoke-direct {v1, p0, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1220
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1224
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1226
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1228
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v1
.end method

.method public showShareSelection(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 1
    .param p1, "selectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1189
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_file_share_title_txt:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showShareSelection(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showStoreProgressDialog(I)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 1700
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1701
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1703
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1706
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1707
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    .line 1709
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1710
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1712
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V

    .line 1713
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showStoreProgressDialog(IIZLandroid/view/View;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "isVisibleIcon"    # Z
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 1729
    if-eqz p4, :cond_2

    .line 1730
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 1731
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1733
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1734
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1735
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1736
    if-eqz p3, :cond_0

    .line 1737
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1739
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 1740
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1742
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1743
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V

    .line 1744
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 1746
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showStoreProgressDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public showTermsAndConditions(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 9
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 1866
    if-nez p1, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1872
    .local v7, "inflater":Landroid/view/LayoutInflater;
    if-eqz v7, :cond_0

    .line 1877
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->terms_and_conditions_content:I

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1879
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->consent_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1880
    .local v8, "link":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1884
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1045
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1047
    .local v2, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1048
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1058
    :goto_0
    return-object v1

    .line 1052
    :cond_0
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1053
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->getThermalCriticalString()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1054
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1055
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1056
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1057
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1058
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showThermalCriticalAndAbort()V
    .locals 0

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1076
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V

    .line 1077
    return-void
.end method

.method public showThermalWarning(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 6
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_0

    .line 1614
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;

    invoke-direct {v5, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .local v5, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1615
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1617
    .end local v5    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showUnknownErrorMessage()V
    .locals 3

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1486
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1490
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1491
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_fatal_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1492
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1494
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showZoomHelpMessage(Z)V
    .locals 3
    .param p1, "zoomSupported"    # Z

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1243
    if-eqz p1, :cond_1

    .line 1244
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_zoom_help_txt:I

    .line 1249
    .local v0, "resId":I
    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1251
    .end local v0    # "resId":I
    :cond_0
    return-void

    .line 1246
    :cond_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_zoom_not_supported_txt:I

    .restart local v0    # "resId":I
    goto :goto_0
.end method
