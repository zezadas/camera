.class final Lcom/sonymobile/cameracommon/testevent/TestEventSender$1;
.super Ljava/lang/Object;
.source "TestEventSender.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/testevent/TestEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/testevent/TestEventSender;->getBlankListener()Lcom/sonymobile/cameracommon/testevent/TestEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturedFrameStored(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .prologue
    .line 62
    return-void
.end method

.method public onPictureTaken()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
