.class Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;
.super Ljava/lang/Object;
.source "SmartCoverViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceAvailableRetryTask"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mSurface:Landroid/view/SurfaceHolder;

.field private final mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p2, "surface"    # Landroid/view/SurfaceHolder;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    .line 349
    iput p3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->mWidth:I

    .line 350
    iput p4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->mHeight:I

    .line 351
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->mWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;->mHeight:I

    # invokes: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$000(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Landroid/view/SurfaceHolder;II)V

    .line 359
    return-void
.end method
