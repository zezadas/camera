.class Lcom/sonyericsson/android/camera/view/CameraWindow$3;
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
    .line 1469
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$900(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$600(Lcom/sonyericsson/android/camera/view/CameraWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$700(Lcom/sonyericsson/android/camera/view/CameraWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$800(Lcom/sonyericsson/android/camera/view/CameraWindow;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setAfRectanglePosition(III)V

    .line 1477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1479
    return-void
.end method
