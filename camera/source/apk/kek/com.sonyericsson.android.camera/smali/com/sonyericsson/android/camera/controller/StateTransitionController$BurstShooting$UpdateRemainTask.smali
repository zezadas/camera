.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;
.super Ljava/lang/Object;
.source "StateTransitionController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRemainTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0
    .param p2, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2537
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 2538
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2533
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
