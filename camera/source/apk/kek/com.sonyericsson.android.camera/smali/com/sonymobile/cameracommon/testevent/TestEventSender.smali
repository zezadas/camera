.class public Lcom/sonymobile/cameracommon/testevent/TestEventSender;
.super Ljava/lang/Object;
.source "TestEventSender.java"


# static fields
.field private static sListener:Lcom/sonymobile/cameracommon/testevent/TestEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->getBlankListener()Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->sListener:Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlankListener()Lcom/sonymobile/cameracommon/testevent/TestEventListener;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/sonymobile/cameracommon/testevent/TestEventSender$1;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/testevent/TestEventSender$1;-><init>()V

    return-object v0
.end method

.method public static onCapturedFrameStored(J)V
    .locals 2
    .param p0, "timeStamp"    # J

    .prologue
    .line 49
    sget-object v0, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->sListener:Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    invoke-interface {v0, p0, p1}, Lcom/sonymobile/cameracommon/testevent/TestEventListener;->onCapturedFrameStored(J)V

    .line 50
    return-void
.end method

.method public static onPictureTaken()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->sListener:Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/testevent/TestEventListener;->onPictureTaken()V

    .line 41
    return-void
.end method

.method public static setListener(Lcom/sonymobile/cameracommon/testevent/TestEventListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    invoke-static {}, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->getBlankListener()Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->sListener:Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    sput-object p0, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->sListener:Lcom/sonymobile/cameracommon/testevent/TestEventListener;

    goto :goto_0
.end method
