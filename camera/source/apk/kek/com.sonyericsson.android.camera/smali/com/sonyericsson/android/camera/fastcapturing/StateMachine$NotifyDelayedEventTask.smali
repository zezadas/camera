.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;
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
    name = "NotifyDelayedEventTask"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/Object;

.field private final mEvent:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "event"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;->mEvent:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    .line 1079
    iput-object p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;->mArgs:[Ljava/lang/Object;

    .line 1080
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    .param p3, "x2"    # [Ljava/lang/Object;
    .param p4, "x3"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    .prologue
    .line 1072
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;->mEvent:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1085
    return-void
.end method
