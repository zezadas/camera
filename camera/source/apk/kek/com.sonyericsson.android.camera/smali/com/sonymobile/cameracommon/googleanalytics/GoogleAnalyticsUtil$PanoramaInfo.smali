.class Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaInfo"
.end annotation


# instance fields
.field private mSuccessNum:I

.field private mTryNum:I

.field private mViewerLaunched:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object p1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    .line 107
    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mSuccessNum:I

    .line 108
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;-><init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->sendPanoramaInfo()V

    return-void
.end method

.method private sendPanoramaInfo()V
    .locals 8

    .prologue
    .line 131
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    if-lez v0, :cond_0

    .line 132
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "tryNum":Ljava/lang/String;
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mSuccessNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "succeessNum":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_try"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->mValue:I

    int-to-long v4, v4

    # invokes: Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->access$100(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 138
    .end local v6    # "succeessNum":Ljava/lang/String;
    .end local v7    # "tryNum":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->clear()V

    .line 139
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    .line 145
    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mSuccessNum:I

    .line 146
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    .line 147
    return-void
.end method

.method public setViewerLaunched()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    if-lez v0, :cond_0

    .line 126
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    .line 128
    :cond_0
    return-void
.end method

.method public succeedInPanorama()V
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mSuccessNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mSuccessNum:I

    .line 120
    return-void
.end method

.method public tryPanorama()V
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->mTryNum:I

    .line 114
    return-void
.end method
