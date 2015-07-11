.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZoomingBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoZooming"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZoomingBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1886
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 1887
    return-void
.end method


# virtual methods
.method public varargs handleKeyZoomUp([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 1891
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopZoom()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1892
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1893
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1898
    return-void
.end method
