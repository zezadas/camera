.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceAvailableRetryTask"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mSurface:Landroid/view/SurfaceHolder;

.field private final mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p2, "surface"    # Landroid/view/SurfaceHolder;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    .line 472
    iput p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->mWidth:I

    .line 473
    iput p4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->mHeight:I

    .line 474
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->mWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;->mHeight:I

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/view/SurfaceHolder;II)V

    .line 482
    return-void
.end method
