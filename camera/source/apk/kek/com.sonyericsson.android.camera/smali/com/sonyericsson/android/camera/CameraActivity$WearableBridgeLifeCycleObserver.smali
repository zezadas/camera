.class Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WearableBridgeLifeCycleObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/CameraActivity$1;

    .prologue
    .line 1869
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 1882
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1872
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->canHandleCaptureRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateIdleToWearable()V

    .line 1877
    :goto_0
    return-void

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateBlockedToWearable()V

    goto :goto_0
.end method
