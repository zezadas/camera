.class public Lcom/sonymobile/cameracommon/media/recorder/RecorderFactory;
.super Ljava/lang/Object;
.source "RecorderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;Landroid/os/Handler;IZ)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    .param p2, "soundListener"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;
    .param p3, "progressNotificationHandler"    # Landroid/os/Handler;
    .param p4, "progressNotificationIntervalMillis"    # I
    .param p5, "isManualRecordingSoundNeeded"    # Z

    .prologue
    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;-><init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;Landroid/os/Handler;IZ)V

    return-object v0
.end method
