.class public Lcom/sonyericsson/android/camera/controller/Selftimer;
.super Ljava/lang/Object;
.source "Selftimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/Selftimer$1;,
        Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;,
        Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;
    }
.end annotation


# static fields
.field private static final AF_DELAY_DURATION:I

.field private static final SELF_TIMER_CAPTURE_DELAY_DURATION:I = 0xc8

.field private static final SELF_TIMER_CONTROL_INTERVAL_MILLIS:I = 0xfa

.field private static final SELF_TIMER_INTERVALS:[I

.field private static final SELF_TIMER_LEVELS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraType:I

.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private final mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

.field private mMaxDuration:I

.field private mOffsetDuration:I

.field private mSelfTimerStartTask:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

.field private mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field private mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field private mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Selftimer;->TAG:Ljava/lang/String;

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_LEVELS:[I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_INTERVALS:[I

    .line 38
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_INTERVALS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sonyericsson/android/camera/controller/Selftimer;->AF_DELAY_DURATION:I

    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x7d0
        0xfa0
        0x2710
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0xfa
        0x1f4
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;I)V
    .locals 2
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .param p2, "cameraType"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;-><init>(Lcom/sonyericsson/android/camera/controller/Selftimer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    .line 54
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSelfTimerStartTask:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 19
    iput p2, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mCameraType:I

    .line 20
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/controller/Selftimer;)Lcom/sonyericsson/cameracommon/utility/CameraTimer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/Selftimer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    return-object v0
.end method


# virtual methods
.method public countdown(I)V
    .locals 3
    .param p1, "currentTime"    # I

    .prologue
    .line 111
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mCameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startSelfTimerCountDownAnimation()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    .local v0, "timerLevel":I
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_LEVELS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 117
    sget-object v1, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_LEVELS:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    .line 123
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_LEVELS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 124
    sget-object v1, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_LEVELS:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 127
    :cond_2
    if-nez v0, :cond_5

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->blink()V

    .line 133
    :cond_3
    :goto_1
    return-void

    .line 116
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_5
    sget-object v1, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_LEVELS:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    sub-int v1, p1, v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/Selftimer;->SELF_TIMER_INTERVALS:[I

    aget v2, v2, v0

    rem-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->blink()V

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->cancelSelftimer(Z)V

    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 144
    return-void
.end method

.method public start(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 10
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 70
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mCameraType:I

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget v2, p1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->mType:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->shouldAfStartAfterSelfTimer(I)Z

    move-result v0

    .line 81
    .local v0, "withAf":Z
    if-eqz v0, :cond_1

    .line 82
    sget v1, Lcom/sonyericsson/android/camera/controller/Selftimer;->AF_DELAY_DURATION:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mOffsetDuration:I

    .line 88
    :goto_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->play(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    .line 94
    :cond_0
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mMaxDuration:I

    int-to-long v2, v2

    const-wide/16 v4, 0xfa

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    const-string v7, "SelfTimer"

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 100
    new-instance v1, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;-><init>(Lcom/sonyericsson/android/camera/controller/Selftimer;Lcom/sonyericsson/android/camera/controller/Selftimer$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSelfTimerStartTask:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSelfTimerStartTask:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;->post(Ljava/lang/Runnable;)Z

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateSelfTimerStatus(Z)V

    .line 106
    return-void

    .line 72
    .end local v0    # "withAf":Z
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startPhotoSelftimer()V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startVideoSelftimer()V

    goto :goto_0

    .line 85
    .restart local v0    # "withAf":Z
    :cond_1
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mOffsetDuration:I

    goto :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "continueToCapture"    # Z

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateSelfTimerStatus(Z)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->cancelPlayAndBlink()V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->cancelSelftimer(Z)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSelfTimerStartTask:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mHandler:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSelfTimerStartTask:Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerStartTask;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    :cond_1
    return-void
.end method

.method public update(ILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V
    .locals 0
    .param p1, "maxDuration"    # I
    .param p2, "soundType"    # Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .prologue
    .line 57
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mMaxDuration:I

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/Selftimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 59
    return-void
.end method
