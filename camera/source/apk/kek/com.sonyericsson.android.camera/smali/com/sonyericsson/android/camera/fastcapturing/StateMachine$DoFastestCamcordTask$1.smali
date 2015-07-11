.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;)V
    .locals 0

    .prologue
    .line 4682
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4686
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4687
    return-void
.end method
