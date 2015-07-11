.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$3;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->doChangeSceneMode(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0

    .prologue
    .line 2668
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$3;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$3;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$3;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2674
    :cond_0
    return-void
.end method
