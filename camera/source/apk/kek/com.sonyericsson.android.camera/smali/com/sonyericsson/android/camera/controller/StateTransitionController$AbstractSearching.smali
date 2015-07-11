.class abstract Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSearching"
.end annotation


# instance fields
.field public mBurstCapture:Z

.field public mCapture:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1429
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->entry()V

    .line 1431
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->mCapture:Z

    .line 1432
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->mBurstCapture:Z

    .line 1433
    return-void
.end method
