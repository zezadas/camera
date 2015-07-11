.class public Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;
.super Ljava/lang/Object;
.source "FpsMonitor.java"


# instance fields
.field private mHeadSampleTime:J

.field private final mIntervalCount:I

.field private final mResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "intervalCount"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mResult:Ljava/util/List;

    .line 29
    iput p1, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mIntervalCount:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mHeadSampleTime:J

    .line 32
    return-void
.end method

.method private addResult(J)V
    .locals 7
    .param p1, "tailSampleTime"    # J

    .prologue
    .line 53
    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mHeadSampleTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double v0, v2, v4

    .line 54
    .local v0, "duration":D
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mResult:Ljava/util/List;

    iget v3, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v4, v3

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 3
    .param p1, "presentationTime"    # J

    .prologue
    .line 35
    iget v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    .line 36
    iget v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    iget v1, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mIntervalCount:I

    if-ge v0, v1, :cond_1

    .line 37
    iget v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mHeadSampleTime:J

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->addResult(J)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    goto :goto_0
.end method

.method public dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 65
    .local v2, "fps":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    .end local v2    # "fps":D
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mSampleCount:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;->mHeadSampleTime:J

    .line 50
    return-void
.end method
