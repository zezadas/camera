.class Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;
.super Ljava/lang/Object;
.source "TouchMoveAndStopDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$800(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$800(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$900(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$1000(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;->onSingleTouchStopDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 213
    :cond_0
    return-void
.end method
