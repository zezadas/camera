.class Lcom/sonyericsson/android/camera/view/CameraWindow$4;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;->onSurfaceSizeChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 0

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$500(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$500(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableUpdateAf:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1100(Lcom/sonyericsson/android/camera/view/CameraWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    return-void
.end method
