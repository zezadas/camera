.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;
.super Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;
.source "UniCastStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z

.field private static RECEIVER_THREAD_NAME:Ljava/lang/String;

.field private static SUBMITTER_THREAD_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "unicast-session-submit"

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->SUBMITTER_THREAD_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "unicast-session-receive"

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->RECEIVER_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;-><init>()V

    .line 152
    return-void
.end method


# virtual methods
.method protected getReceiverThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->RECEIVER_THREAD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubmitterThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->SUBMITTER_THREAD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->release()V

    return-void
.end method

.method public requestSubmitMessage([BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V
    .locals 6
    .param p1, "message"    # [B
    .param p2, "targetIpAddress"    # Ljava/lang/String;
    .param p3, "targetPort"    # I
    .param p4, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    .prologue
    .line 58
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;[BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->executeSubmitTask(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public startReceiveMessage(IILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;)V
    .locals 1
    .param p1, "targetPort"    # I
    .param p2, "dataSize"    # I
    .param p3, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .prologue
    .line 39
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;II)V

    invoke-virtual {p0, p3, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->startReceiveMessageImpl(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;)V

    .line 42
    return-void
.end method

.method public bridge synthetic stopReceiveMessage()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->stopReceiveMessage()V

    return-void
.end method
