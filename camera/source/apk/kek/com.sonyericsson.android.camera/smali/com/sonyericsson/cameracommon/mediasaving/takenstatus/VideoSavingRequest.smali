.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
.super Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
.source "VideoSavingRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V
    .locals 0
    .param p1, "commonStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .param p2, "videoStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    .line 41
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->log()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .locals 6
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .line 56
    return-void
.end method


# virtual methods
.method public createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v0, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "video":Ljava/io/File;
    const-string v2, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    const-string v2, "description"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    const-string v2, "datetaken"

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getDateTaken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "date_modified"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 98
    const-string v2, "latitude"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 100
    const-string v2, "longitude"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 103
    :cond_1
    const-string v2, "artist"

    const-string v3, "<unknown>"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "album"

    const-string v3, "<unknown>"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "duration"

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "resolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "width"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v2, "height"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v2, "_data"

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    return-wide v0
.end method

.method public log()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->log()V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->log()V

    .line 73
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iput-wide p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 66
    return-void
.end method
