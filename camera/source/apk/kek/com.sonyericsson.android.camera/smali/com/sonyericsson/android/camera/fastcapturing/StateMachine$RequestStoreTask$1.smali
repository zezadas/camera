.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;)V
    .locals 0

    .prologue
    .line 5519
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    .line 5525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5526
    return-void
.end method
