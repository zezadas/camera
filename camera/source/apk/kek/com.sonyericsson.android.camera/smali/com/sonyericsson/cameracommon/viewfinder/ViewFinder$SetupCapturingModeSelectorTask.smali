.class Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCapturingModeSelectorTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    # invokes: Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->access$200(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    # invokes: Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->access$300(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V

    .line 597
    :cond_0
    return-void
.end method
