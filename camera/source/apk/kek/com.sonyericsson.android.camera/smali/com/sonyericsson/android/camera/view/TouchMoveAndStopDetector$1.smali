.class Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;
.super Ljava/lang/Object;
.source "TouchMoveAndStopDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->onTouchStopDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$800(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$800(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;->onTouchStopDetected()V

    .line 179
    :cond_0
    return-void
.end method
