.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WearableBridgePhotoEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;

    .prologue
    .line 1819
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    return-void
.end method


# virtual methods
.method public onPhotoCaptureRequested()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1822
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canHandleWearableCaptureRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1827
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1835
    :goto_0
    return-void

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureFailed()V

    goto :goto_0
.end method
