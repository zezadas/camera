.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecordingStartingFromFastestCamcord"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 0
    .param p2, "quickLaunch"    # Z

    .prologue
    .line 3278
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 3279
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 3280
    return-void
.end method


# virtual methods
.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3286
    return-void
.end method
