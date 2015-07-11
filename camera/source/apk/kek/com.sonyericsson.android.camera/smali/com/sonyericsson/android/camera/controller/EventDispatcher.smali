.class public Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;
.implements Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusWheneverEvent;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$ObjectTrackingEvent;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusEvent;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$NoEvent;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOff;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;,
        Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;
    }
.end annotation


# static fields
.field private static final DETECTION_LIMIT_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

.field private final mCaptureButtonGestureDetector:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

.field private mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field private mExclusiveEventSouce:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mKeyState:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

.field final mNoEvent:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

.field final mObjectTracking:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

.field private mSendLongPressEvent:Z

.field private mShouldSelfTimerStart:Z

.field private mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

.field final mTouchCaptureOff:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

.field final mTouchCaptureOn:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

.field final mTouchCapturingOnly:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

.field private mTouchDetectedTime:J

.field final mTouchFocus:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

.field private final mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

.field final mTouchFocusWhenever:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

.field mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 63
    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mKeyState:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    .line 68
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$NoEvent;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$NoEvent;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mNoEvent:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 70
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusEvent;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusEvent;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 72
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ObjectTrackingEvent;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ObjectTrackingEvent;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 74
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusWheneverEvent;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusWheneverEvent;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusWhenever:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 76
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCapturingOnly:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 78
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOn:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .line 80
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOff;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOff;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOff:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 117
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 118
    .local v0, "slopThreshold":I
    new-instance v1, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .line 120
    new-instance v1, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;)V

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCaptureButtonGestureDetector:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    .line 124
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOff:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    .line 126
    new-instance v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    return-object v0
.end method

.method private consumedByZoom(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "consumedByZoom":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v1, v2, :cond_1

    .line 557
    :cond_0
    const/4 v0, 0x1

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v1, v2, :cond_2

    .line 562
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 565
    :cond_2
    return v0
.end method

.method public static getEventAction(I)Lcom/sonyericsson/android/camera/controller/EventAction;
    .locals 1
    .param p0, "motionEvent"    # I

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    .line 111
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    :goto_0
    return-object v0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    goto :goto_0

    .line 106
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mKeyState:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    return-object v0
.end method

.method private isExclusivedEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, "isExclusived":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mExclusiveEventSouce:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-eqz v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mExclusiveEventSouce:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-eq v1, p1, :cond_0

    .line 1362
    const/4 v0, 0x1

    .line 1365
    :cond_0
    return v0
.end method

.method private resetKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    .prologue
    .line 1141
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventDispatcher$KeyState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1155
    :goto_0
    return-void

    .line 1143
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1144
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 1147
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->AFDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 1150
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendEventFilterMessage(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/controller/EventFilter;->getEventFilter(Lcom/sonyericsson/android/camera/controller/EventFilter;I)Lcom/sonyericsson/android/camera/controller/EventFilter;

    move-result-object v0

    .line 1239
    .local v0, "next":Lcom/sonyericsson/android/camera/controller/EventFilter;
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 1240
    return-void
.end method

.method private setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 0
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mExclusiveEventSouce:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 1352
    return-void
.end method

.method private setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mKeyState:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    .line 1138
    return-void
.end method

.method private shouldSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    .locals 3
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 1105
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mShouldSelfTimerStart:Z

    if-eqz v2, :cond_2

    .line 1110
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getSelfTimerType(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)I

    move-result v1

    .line 1111
    .local v1, "type":I
    const/4 v0, 0x0

    .line 1113
    .local v0, "shouldSelfTimerStart":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isVideoSelfTimerOn()Z

    move-result v0

    .line 1118
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    const/4 v0, 0x0

    .line 1127
    .end local v0    # "shouldSelfTimerStart":Z
    .end local v1    # "type":I
    :cond_0
    :goto_1
    return v0

    .line 1116
    .restart local v0    # "shouldSelfTimerStart":Z
    .restart local v1    # "type":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isSelfTimerOn()Z

    move-result v0

    goto :goto_0

    .line 1127
    .end local v0    # "shouldSelfTimerStart":Z
    .end local v1    # "type":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->cancel()V

    .line 1372
    :cond_0
    return-void
.end method

.method dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 2
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 571
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPosition(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 572
    .local v0, "position":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    invoke-virtual {v1, p1, p4, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;->translate(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    .line 573
    return-void
.end method

.method dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V
    .locals 3
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "direction"    # Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .prologue
    const/4 v2, 0x0

    .line 1248
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventFilter:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/EventFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1250
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    if-ne p1, v0, :cond_0

    .line 1251
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1253
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->preparePinchZoom(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1257
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1258
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_0

    .line 1267
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    if-ne p1, v0, :cond_0

    .line 1268
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1270
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->preparePinchZoom(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1277
    :pswitch_6
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    if-ne p1, v0, :cond_0

    .line 1278
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1279
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1284
    :pswitch_7
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_8
    goto :goto_0

    .line 1293
    :pswitch_9
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1286
    :pswitch_a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 1289
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1251
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1268
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch

    .line 1284
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;
    .locals 1
    .param p1, "touchCapture"    # Z
    .param p2, "sender"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .prologue
    .line 736
    if-eqz p1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOn:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->mSender:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOn:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .line 741
    :goto_0
    return-object v0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOff:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->mSender:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCaptureOff:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    goto :goto_0
.end method

.method public init(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 0
    .param p1, "contentView"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->resetStatus()V

    .line 132
    return-void
.end method

.method public isCaptureValid()Z
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_1

    .line 1160
    :cond_0
    const/4 v0, 0x1

    .line 1162
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->isDragging()Z

    move-result v0

    .line 1197
    .local v0, "isDragging":Z
    return v0
.end method

.method public isPinchZoomValid()Z
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_1

    .line 1179
    :cond_0
    const/4 v0, 0x1

    .line 1181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfTimerRunning()Z
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterKeyValid(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 1201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isCaptureValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    sparse-switch p1, :sswitch_data_0

    .line 1224
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1210
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1218
    :sswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->AFDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1202
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x42 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public isTouchEventValid()Z
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_1

    .line 1189
    :cond_0
    const/4 v0, 0x1

    .line 1191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolumeKeyValid()Z
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_1

    .line 1167
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    if-ne v0, v1, :cond_1

    .line 1168
    const/4 v0, 0x1

    .line 1171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAvailableSizeUpdated(J)V
    .locals 0
    .param p1, "available"    # J

    .prologue
    .line 1331
    return-void
.end method

.method public onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 488
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isCaptureValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v4

    .line 491
    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v2, v3, :cond_0

    .line 497
    :cond_2
    if-nez p1, :cond_3

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCaptureButtonGestureDetector:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 501
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->getButtonEvent(I)Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    move-result-object v1

    .line 502
    .local v1, "source":Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getEventAction(I)Lcom/sonyericsson/android/camera/controller/EventAction;

    move-result-object v0

    .line 504
    .local v0, "action":Lcom/sonyericsson/android/camera/controller/EventAction;
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0
.end method

.method public onChangeFocusFace(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "selectedUuid"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v6, -0x1

    .line 581
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FACE_DETECT_CHANGE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p2, p4

    add-int v5, p3, p5

    invoke-direct {v3, p2, p3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, p1, p1, v3, v6}, Lcom/sonyericsson/cameracommon/focusview/NamedFace;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V

    invoke-static {v0, v1, v6, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 591
    return-void
.end method

.method public onDestinationToSaveChanged()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 1340
    :goto_0
    return-void

    .line 1338
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0
.end method

.method public onDoubleCanceled()V
    .locals 3

    .prologue
    .line 702
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 703
    return-void
.end method

.method public onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 691
    return-void
.end method

.method public onDoubleRotated(FF)V
    .locals 0
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 697
    return-void
.end method

.method public onDoubleScaled(FFF)V
    .locals 4
    .param p1, "currentLength"    # F
    .param p2, "lastLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 681
    sub-float v1, p1, p2

    .line 682
    .local v1, "scaleLength":F
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN_OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 683
    .local v0, "direction":Lcom/sonyericsson/android/camera/controller/ZoomDirection;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->setScaleLength(F)V

    .line 684
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->STRETCH:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 685
    return-void
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isPinchZoomValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 676
    :cond_0
    return-void
.end method

.method public onFaceRectLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 611
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 612
    return-void
.end method

.method public onFaceRectTouchCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 605
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 607
    return-void
.end method

.method public onFaceRectTouchUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 597
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 599
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocX"    # F
    .param p4, "velocY"    # F

    .prologue
    .line 715
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 273
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 276
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 277
    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    if-eq v0, v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 283
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 375
    goto :goto_0

    .line 285
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isVolumeKeyValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->get(ILcom/sonyericsson/android/camera/ExtendedActivity;)Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 289
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 295
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 298
    goto :goto_0

    .line 302
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isShutterKeyValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 304
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->AFDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 309
    :pswitch_4
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    const-string v2, "The shutter key is pressed"

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I

    .line 313
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isShutterKeyValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->shouldSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendSelfTimerEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V

    .line 321
    :goto_1
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->SHUTTERDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 316
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_4

    .line 317
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_1

    .line 319
    :cond_4
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_1

    .line 328
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isShutterKeyValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 332
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->shouldSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 333
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendSelfTimerEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V

    .line 339
    :goto_2
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->SHUTTERDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto/16 :goto_0

    .line 334
    :cond_5
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_6

    .line 335
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_2

    .line 337
    :cond_6
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_2

    .line 344
    :pswitch_6
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isBackKeyValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 349
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 353
    goto/16 :goto_0

    .line 359
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isShutterKeyValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 363
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->shouldSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 364
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendSelfTimerEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V

    .line 370
    :goto_3
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->SHUTTERDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto/16 :goto_0

    .line 365
    :cond_8
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_9

    .line 366
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_3

    .line 368
    :cond_9
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_3

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 383
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 386
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 481
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 388
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isVolumeKeyValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->get(ILcom/sonyericsson/android/camera/ExtendedActivity;)Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 398
    goto :goto_0

    .line 402
    :pswitch_3
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventDispatcher$KeyState:[I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 404
    :pswitch_4
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 405
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 409
    :pswitch_5
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    goto :goto_0

    .line 413
    :pswitch_6
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 416
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_0

    .line 417
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 428
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->SHUTTERDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    if-ne v2, v3, :cond_0

    .line 429
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->CAPTURED:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 432
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_0

    .line 433
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 442
    :pswitch_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->SHUTTERDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    if-ne v2, v3, :cond_0

    .line 443
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 444
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_0

    .line 445
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto/16 :goto_0

    .line 452
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->resetKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 454
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isBackKeyValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_KEY_BACK:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 462
    goto/16 :goto_0

    .line 471
    :pswitch_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getKeyState()Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->SHUTTERDONE:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    if-ne v2, v3, :cond_0

    .line 472
    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 473
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v2, :cond_0

    .line 474
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto/16 :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
    .end packed-switch

    .line 402
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 732
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 733
    return-void
.end method

.method public onOverTripleCanceled()V
    .locals 3

    .prologue
    .line 708
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 709
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 721
    return-void
.end method

.method public onSingleCanceled()V
    .locals 3

    .prologue
    .line 649
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 650
    return-void
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 656
    return-void
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 643
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 644
    return-void
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "release"    # Landroid/graphics/Point;
    .param p2, "remain"    # Landroid/graphics/Point;

    .prologue
    .line 668
    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 662
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 727
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isPinchZoomValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchDetectedTime:J

    .line 638
    :cond_0
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 1314
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->hasExtraOutputPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 1326
    :goto_1
    return-void

    .line 1310
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    goto :goto_1

    .line 1322
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;->consumeTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isPinchZoomValid()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 516
    .local v0, "consumed":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isTouchEventValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 521
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 548
    :cond_1
    :goto_1
    return v0

    .line 513
    .end local v0    # "consumed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    .restart local v0    # "consumed":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->consumedByZoom(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isTouchEventValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;->notifyTouchFocusDetector(Landroid/view/MotionEvent;)V

    .line 542
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getEventAction(I)Lcom/sonyericsson/android/camera/controller/EventAction;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_1
.end method

.method public onTouchMoveDetected(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 618
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->MOVE:Lcom/sonyericsson/android/camera/controller/EventAction;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 620
    return-void
.end method

.method public onTouchStopDetected(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_0

    .line 627
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->STOP:Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->dispatch(Lcom/sonyericsson/android/camera/controller/EventAction;IILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 629
    :cond_0
    return-void
.end method

.method public preparePinchZoom(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 6
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 1343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1344
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchDetectedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1345
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1347
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setTouchEventListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V

    .line 140
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->setMotionEventDetectorListener(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 146
    :cond_1
    return-void
.end method

.method public resetStatus()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 153
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0
.end method

.method public sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 4
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 937
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->shouldSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendSelfTimerEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isExclusivedEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 998
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoOffTimer()V

    goto :goto_0

    .line 948
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 949
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AF_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_1

    .line 953
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 954
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AF_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_1

    .line 958
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 959
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AF_CANCEL:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_1

    .line 963
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 964
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 966
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 976
    :pswitch_5
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_1

    .line 980
    :pswitch_6
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_PAUSE_RESUME:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 992
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setCurrentEventSource(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 993
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AF_CANCEL:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 994
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_1

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 964
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public sendCaptureEventWithPosition(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V
    .locals 2
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "sender"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .prologue
    .line 1008
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->shouldSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendSelfTimerEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V

    .line 1040
    :goto_0
    return-void

    .line 1013
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1015
    :pswitch_0
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    .line 1016
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1020
    :pswitch_1
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    .line 1021
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1026
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1027
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1031
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1036
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1037
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1013
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 1
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    if-eqz v0, :cond_0

    .line 1046
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public sendSelfTimerEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V
    .locals 3
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "sender"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-eq v1, v2, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    if-ne p1, v1, :cond_2

    .line 1075
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getSelfTimerType(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)I

    move-result v0

    .line 1076
    .local v0, "type":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setShouldSelfTimerStart(Z)V

    .line 1077
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v1, p2, v0, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 1080
    .end local v0    # "type":I
    :cond_2
    if-eqz p4, :cond_0

    .line 1081
    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1083
    :pswitch_1
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1087
    :pswitch_2
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1091
    :pswitch_3
    invoke-interface {p4, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setSendLongPressEvent(Z)V
    .locals 0
    .param p1, "sendLongPressEvent"    # Z

    .prologue
    .line 1053
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mSendLongPressEvent:Z

    .line 1054
    return-void
.end method

.method public setShouldSelfTimerStart(Z)V
    .locals 0
    .param p1, "isSelfTimerOn"    # Z

    .prologue
    .line 1101
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mShouldSelfTimerStart:Z

    .line 1102
    return-void
.end method

.method public startTouchEventTranslation()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->setMotionEventDetectorListener(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;)V

    .line 165
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getTouchArea()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchActionTranslator:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setTouchEventListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->enableTouchEvent()V

    .line 171
    return-void
.end method

.method public stopTranslation()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;->NON:Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setKeyState(Lcom/sonyericsson/android/camera/controller/EventDispatcher$KeyState;)V

    .line 159
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    .line 160
    return-void
.end method

.method public updateLongPressStatus(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "isBurstShotOn"    # Z

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setSendLongPressEvent(Z)V

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 223
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setSendLongPressEvent(Z)V

    goto :goto_0

    .line 225
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setSendLongPressEvent(Z)V

    goto :goto_0
.end method

.method public updateSelfTimerStatus(Z)V
    .locals 3
    .param p1, "running"    # Z

    .prologue
    const/4 v2, 0x0

    .line 230
    if-eqz p1, :cond_1

    .line 231
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mEventFilter:Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setSendLongPressEvent(Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    goto :goto_0
.end method

.method public updateTouchCaptureStatus(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    goto :goto_0
.end method

.method public updateTouchEventTranslator(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 3
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTouchCapture()Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 175
    .local v0, "isTouchCaptureOn":Z
    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 199
    if-eqz v0, :cond_1

    .line 200
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchCapturingOnly:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    .line 210
    :goto_0
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->isBurstShotOn()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateLongPressStatus(IZ)V

    .line 212
    return-void

    .line 177
    :pswitch_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mNoEvent:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusWhenever:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    goto :goto_0

    .line 189
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    goto :goto_0

    .line 194
    :pswitch_2
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    goto :goto_0

    .line 203
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mNoEvent:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->getTouchCapturing(ZLcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTranslator:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 187
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateTouchFocusStatus(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    goto :goto_0
.end method

.method public updateZoomStatus(ZLcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 1
    .param p1, "running"    # Z
    .param p2, "zoom"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 258
    if-eqz p1, :cond_2

    .line 259
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v0, :cond_1

    .line 260
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v0, :cond_0

    .line 262
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendEventFilterMessage(I)V

    goto :goto_0
.end method
