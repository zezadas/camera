.class public Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;
.super Ljava/lang/Object;
.source "CaptureButtonGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$GestureHandler;,
        Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TAP_TIMEOUT:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->LONGPRESS_TIMEOUT:I

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->mListener:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$GestureHandler;-><init>(Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    return-void
.end method

.method private dispatchLongPress()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->mListener:Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;->onLongPress()V

    .line 99
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 71
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->TAP_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget v4, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector;->cancel()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
