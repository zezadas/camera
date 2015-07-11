.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedObjectLostTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0

    .prologue
    .line 5634
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    .prologue
    .line 5634
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doDeselectObject()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 5639
    return-void
.end method
