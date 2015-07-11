.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleForFinish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 590
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;->entry()V

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finish()V

    .line 597
    return-void
.end method

.method public handleAbort(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 601
    const-class v0, Lcom/sonyericsson/android/camera/controller/Inactive;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 602
    return-void
.end method
