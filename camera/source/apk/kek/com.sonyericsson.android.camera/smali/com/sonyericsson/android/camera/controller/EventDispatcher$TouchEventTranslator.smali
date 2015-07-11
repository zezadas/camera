.class abstract Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TouchEventTranslator"
.end annotation


# instance fields
.field public mTouchCapture:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V
    .locals 0
    .param p2, "touchCapture"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;->mTouchCapture:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .line 752
    return-void
.end method


# virtual methods
.method public abstract consumeTouchEvent()Z
.end method

.method public abstract notifyTouchFocusDetector(Landroid/view/MotionEvent;)V
.end method

.method public abstract translate(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
.end method
