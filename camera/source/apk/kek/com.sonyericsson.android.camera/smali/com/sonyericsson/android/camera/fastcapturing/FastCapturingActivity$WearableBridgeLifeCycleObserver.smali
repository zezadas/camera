.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WearableBridgeLifeCycleObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;

    .prologue
    .line 1802
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 1815
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canHandleWearableCaptureRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->notifyStateIdleToWearable()V

    .line 1810
    :goto_0
    return-void

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->notifyStateBlockedToWearable()V

    goto :goto_0
.end method
