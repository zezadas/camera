.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;)V
    .locals 0

    .prologue
    .line 5825
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_SURFACE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5831
    return-void
.end method
