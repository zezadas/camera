.class public Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$OutResultDelayTask;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "camera_perform.csv"

.field private static final TAG:Ljava/lang/String; = "MeasurePerformance"

.field public static final TAG_DEVICE:Ljava/lang/String; = "[DEVICE]"

.field public static final TAG_SEQ:Ljava/lang/String; = "[SEQ]"

.field public static final TAG_SHOT:Ljava/lang/String; = "[SHOT]"

.field public static final TAG_STARTUP:Ljava/lang/String; = "[START UP]"

.field public static final TAG_SURFACE:Ljava/lang/String; = "[SURFACE]"

.field public static final TAG_TASK:Ljava/lang/String; = "[TASK]"

.field private static mResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;"
        }
    .end annotation
.end field

.field private static sFpsStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

.field private static sMemoryFlag:Z

.field private static sTimerFlag:Z


# instance fields
.field private originalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    .line 136
    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    .line 159
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sFpsStatisticsMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    .line 201
    return-void
.end method

.method public static debugShowPreviewFPS(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 562
    return-void
.end method

.method private static init()V
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    return-void
.end method

.method private static final isLastMeasuredTime(Ljava/util/List;I)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 256
    .local v2, "target":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 257
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 258
    .local v0, "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    iget-object v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v3, v4, :cond_0

    .line 259
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-ne v3, v4, :cond_0

    .line 260
    const/4 v3, 0x0

    .line 264
    .end local v0    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :goto_1
    return v3

    .line 256
    .restart local v0    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static final measureResource(I)V
    .locals 7
    .param p0, "aId"    # I

    .prologue
    .line 317
    sget-boolean v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v6, :cond_0

    .line 330
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 322
    .local v2, "resource":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 323
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 324
    .local v4, "totalMem":J
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 327
    .local v0, "freeMem":J
    iput-wide v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 328
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 329
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final measureResource(Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 334
    sget-boolean v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v6, :cond_0

    .line 347
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 339
    .local v2, "resource":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 340
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 341
    .local v4, "totalMem":J
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 343
    .local v0, "freeMem":J
    iput-object p0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 344
    iput-wide v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 345
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 346
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "aKind"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 230
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v3, :cond_0

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 235
    .local v0, "sysTime":J
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 237
    .local v2, "time":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iput-object p0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 238
    iput-object p2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    .line 239
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    .line 240
    iput-object p1, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 241
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .locals 2
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "isStart"    # Z

    .prologue
    .line 293
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_0
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    .line 297
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_0
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;ZLjava/lang/String;)V
    .locals 1
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "isStart"    # Z
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    .line 282
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_0
.end method

.method public static final measureTimeOverwrite(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .locals 2
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "isStart"    # Z

    .prologue
    .line 310
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_0
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    .line 314
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_0
.end method

.method public static final outResult()V
    .locals 5

    .prologue
    .line 354
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v3, :cond_0

    .line 373
    .local v0, "resultResourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    .local v1, "resultTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    .local v2, "string":Ljava/lang/String;
    :goto_0
    return-void

    .line 358
    .end local v0    # "resultResourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    .end local v1    # "resultTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    .restart local v1    # "resultTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    .restart local v0    # "resultResourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    const-string v2, ""

    .line 362
    .restart local v2    # "string":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 364
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-eqz v3, :cond_1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultTime(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_1
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-eqz v3, :cond_2

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultResource(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    :cond_2
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->writeFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final outResultDelay(I)V
    .locals 0
    .param p0, "delayMillis"    # I

    .prologue
    .line 385
    return-void
.end method

.method public static final setMemoryFlag(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 225
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    .line 226
    return-void
.end method

.method private static setResultResource(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "resultResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v3, "string":Ljava/lang/StringBuilder;
    const-string v5, "---Measure Resource Start---\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v5, "ID,Total,Used,free\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/4 v2, 0x0

    .local v2, "sIndex":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 480
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-object v4, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 481
    .local v4, "tag":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v6, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 482
    .local v6, "totalMem":J
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v0, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 483
    .local v0, "freeMem":J
    sub-long v8, v6, v0

    .line 484
    .local v8, "usedMem":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v0    # "freeMem":J
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "totalMem":J
    .end local v8    # "usedMem":J
    :cond_0
    const-string v5, "---Measure Resource End---\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static setResultTime(Ljava/util/List;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "resultTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    const/4 v14, 0x0

    .line 395
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 396
    .local v4, "start":[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    new-array v1, v6, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    .line 397
    .local v1, "amounts":[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 398
    new-instance v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    invoke-direct {v6, v14}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    aput-object v6, v1, v3

    .line 397
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v5, "string":Ljava/lang/StringBuilder;
    const-string v6, "---Measure Time Start---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v6, "[PERFORMANCE]ID,Time[ms],Comment\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 404
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 405
    .local v2, "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v6, v7, :cond_2

    .line 406
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    if-nez v6, :cond_1

    .line 408
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v2, v4, v6

    .line 403
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    :cond_2
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v6, v7, :cond_3

    .line 412
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v2, v4, v6

    goto :goto_2

    .line 415
    :cond_3
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    if-eqz v6, :cond_1

    .line 416
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iput-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 417
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    iget-wide v8, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget-wide v10, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v4, v7

    iget-wide v12, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    .line 419
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    iget v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    .line 420
    invoke-static {p0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->isLastMeasuredTime(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    const-string v6, "[PERFORMANCE]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v8, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v8

    aget-object v8, v4, v8

    iget-wide v8, v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v14, v4, v6

    goto/16 :goto_2

    .line 438
    .end local v2    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_4
    const-string v6, "[PERFORMANCE]---Measure Time End---\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v6, "---Measure Time Dump Start---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v6, "ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v3, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 442
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 443
    .restart local v2    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sget-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    iget-wide v8, v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 455
    .end local v2    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 456
    aget-object v0, v1, v3

    .line 457
    .local v0, "amount":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-eqz v6, :cond_6

    .line 458
    const-string v6, "AmountTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v6, " total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v6, ", count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v6, ", avalage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget v8, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 469
    .end local v0    # "amount":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
    :cond_7
    const-string v6, "---Measure Time Dump End---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static final setTimerFlag(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 216
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    .line 217
    return-void
.end method

.method private static writeFile(Ljava/lang/String;)V
    .locals 8
    .param p0, "aResult"    # Ljava/lang/String;

    .prologue
    .line 492
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_perform.csv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 495
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    const/4 v2, 0x0

    .line 504
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "camera_perform.csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 514
    if-eqz v3, :cond_1

    .line 515
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 516
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v2, v3

    .line 522
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MeasurePerformance"

    const-string v5, "Create output file failed"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MeasurePerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 521
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 509
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v4, "MeasurePerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 514
    if-eqz v2, :cond_2

    .line 515
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 516
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 518
    :catch_3
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MeasurePerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v4, "MeasurePerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 514
    if-eqz v2, :cond_2

    .line 515
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 516
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 518
    :catch_5
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MeasurePerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 514
    :goto_3
    if-eqz v2, :cond_3

    .line 515
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 516
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 520
    :cond_3
    :goto_4
    throw v4

    .line 518
    :catch_6
    move-exception v0

    .line 519
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "MeasurePerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 510
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 508
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method
