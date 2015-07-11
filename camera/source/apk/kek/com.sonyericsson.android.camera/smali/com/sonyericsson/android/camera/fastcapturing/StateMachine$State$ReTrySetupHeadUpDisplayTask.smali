.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State$ReTrySetupHeadUpDisplayTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReTrySetupHeadUpDisplayTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 888
    return-void
.end method
