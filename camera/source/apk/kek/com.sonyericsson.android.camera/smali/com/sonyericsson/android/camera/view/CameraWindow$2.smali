.class Lcom/sonyericsson/android/camera/view/CameraWindow$2;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;->changeSurfaceSize(II)V
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
    .line 1434
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$2;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1437
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$2;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 1439
    .local v2, "surface":Landroid/view/SurfaceHolder;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$2;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$500(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1441
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;-><init>(Landroid/view/SurfaceHolder;II)V

    .line 1443
    .local v0, "cameraSurface":Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SURFACE_CHANGED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 1444
    return-void
.end method
