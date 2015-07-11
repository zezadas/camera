.class Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$1;
.super Ljava/lang/Object;
.source "EventObserverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->loading()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->access$200(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;)V

    .line 131
    return-void
.end method
