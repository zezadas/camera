.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;
.super Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TranslatorNoPosition"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V
    .locals 0
    .param p2, "touchCapture"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .line 762
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    .line 763
    return-void
.end method


# virtual methods
.method public consumeTouchEvent()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;->mTouchCapture:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->consumeTouchEvent()Z

    move-result v0

    return v0
.end method

.method public notifyTouchFocusDetector(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 773
    return-void
.end method

.method public translate(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorNoPosition;->mTouchCapture:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->sendEventWithPosition(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    .line 768
    return-void
.end method
