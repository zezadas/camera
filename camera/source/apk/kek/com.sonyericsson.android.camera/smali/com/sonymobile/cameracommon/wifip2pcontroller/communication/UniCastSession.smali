.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;
.super Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;
.source "UniCastSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;
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
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->TAG:Ljava/lang/String;

    .line 28
    const-string v0, "unicast-stream-submit"

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->SUBMITTER_THREAD_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "unicast-stream-receive"

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->RECEIVER_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;-><init>()V

    .line 158
    return-void
.end method


# virtual methods
.method protected getReceiverThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->RECEIVER_THREAD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubmitterThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->SUBMITTER_THREAD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 23
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
    .line 59
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target IP is not detected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;[BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->executeSubmitTask(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public startReceiveMessage(ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;)V
    .locals 1
    .param p1, "targetPort"    # I
    .param p2, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .prologue
    .line 40
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;I)V

    invoke-virtual {p0, p2, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->startReceiveMessageImpl(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;)V

    .line 43
    return-void
.end method

.method public bridge synthetic stopReceiveMessage()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->stopReceiveMessage()V

    return-void
.end method
