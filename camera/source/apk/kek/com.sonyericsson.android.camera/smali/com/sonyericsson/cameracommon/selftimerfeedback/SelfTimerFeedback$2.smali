.class Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$2;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$2;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$2;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$400(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;->turnOff()V

    .line 92
    return-void
.end method
