.class public Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;
.super Ljava/lang/Object;
.source "CaptureButtonEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mController:Lcom/sonyericsson/android/camera/ControllerManager;

.field private final mType:I

.field private final mView:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "view"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .param p3, "controller"    # Lcom/sonyericsson/android/camera/ControllerManager;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mType:I

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mView:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 40
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mController:Lcom/sonyericsson/android/camera/ControllerManager;

    .line 41
    return-void
.end method

.method private closeSettingDialog()V
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mType:I

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mView:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogTemporary()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mView:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogs()V

    goto :goto_0
.end method


# virtual methods
.method notifyListener(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mController:Lcom/sonyericsson/android/camera/ControllerManager;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->mType:I

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/ControllerManager;->onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z

    .line 80
    return-void

    .line 76
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->closeSettingDialog()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->notifyListener(Landroid/view/MotionEvent;)V

    .line 61
    return-void
.end method

.method public onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 69
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 70
    return-void
.end method

.method public onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->notifyListener(Landroid/view/MotionEvent;)V

    .line 46
    return-void
.end method

.method public onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->notifyListener(Landroid/view/MotionEvent;)V

    .line 56
    return-void
.end method

.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->notifyListener(Landroid/view/MotionEvent;)V

    .line 51
    return-void
.end method
