.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "VideoRecordingFps.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "video_recording_fps"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "video_recording_fps"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
