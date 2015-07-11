.class Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpsStatistics"
.end annotation


# instance fields
.field private mFrameCount:I

.field private mLastFpsTime:J

.field private mLastFrameCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I

    .line 527
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFrameCount:I

    .line 528
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFpsTime:J

    return-void
.end method
