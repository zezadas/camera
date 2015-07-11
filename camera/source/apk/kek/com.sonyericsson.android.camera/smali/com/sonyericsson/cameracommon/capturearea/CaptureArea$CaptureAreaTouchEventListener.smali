.class Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;
.super Ljava/lang/Object;
.source "CaptureArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureAreaTouchEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->updateView()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$400(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)V

    .line 156
    :cond_1
    return v3

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # setter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->startTouchStopDetection(II)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$200(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched(Landroid/graphics/Point;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$000(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentPosition(II)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # setter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$300(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$200(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    .line 143
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # setter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
