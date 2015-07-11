.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume$1;
.super Ljava/lang/Object;
.source "StateTransitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;->checkCondition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 732
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_LAUNCH:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 733
    return-void
.end method
