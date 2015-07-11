.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;
.super Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TranslatorWithPosition"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V
    .locals 0
    .param p2, "touchCapture"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .line 783
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchEventTranslator;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;)V

    .line 784
    return-void
.end method


# virtual methods
.method public consumeTouchEvent()Z
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x1

    return v0
.end method

.method public notifyTouchFocusDetector(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    # getter for: Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocusDetector:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->access$100(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->onTouch(Landroid/view/MotionEvent;)Z

    .line 794
    return-void
.end method

.method public translate(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TranslatorWithPosition;->mTouchCapture:Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->sendEventWithPosition(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    .line 789
    return-void
.end method
