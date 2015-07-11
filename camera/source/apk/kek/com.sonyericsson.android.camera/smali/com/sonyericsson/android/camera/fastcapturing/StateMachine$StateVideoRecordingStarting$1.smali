.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;

.field final synthetic val$this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0

    .prologue
    .line 3318
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting$1;->val$this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_START_WAIT_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3322
    return-void
.end method
