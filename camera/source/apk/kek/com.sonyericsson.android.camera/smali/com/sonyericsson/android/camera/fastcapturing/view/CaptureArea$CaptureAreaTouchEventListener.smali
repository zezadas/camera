.class Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;
.super Ljava/lang/Object;
.source "CaptureArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureAreaTouchEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->access$102(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;Z)Z

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
