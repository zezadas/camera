.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 610
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launch()V

    .line 612
    return-void
.end method
