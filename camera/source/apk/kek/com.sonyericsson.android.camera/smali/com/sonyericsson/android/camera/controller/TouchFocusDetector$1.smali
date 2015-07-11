.class Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;
.super Ljava/lang/Object;
.source "TouchFocusDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->onTouchStopDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$800(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$800(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$900(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$900(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;->onTouchStopDetected(II)V

    .line 202
    :cond_0
    return-void
.end method
