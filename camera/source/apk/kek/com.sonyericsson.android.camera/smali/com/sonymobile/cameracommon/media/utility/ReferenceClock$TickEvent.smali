.class Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;
.super Ljava/lang/Object;
.source "ReferenceClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TickEvent"
.end annotation


# instance fields
.field public requestElapsedTime:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)V
    .locals 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$1;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;-><init>(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    # getter for: Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->access$100(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;->onTick(J)V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    # invokes: Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->access$200(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)J

    move-result-wide v2

    # invokes: Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->scheduleNextTickEvent(J)V
    invoke-static {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->access$300(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;J)V

    .line 180
    return-void
.end method
