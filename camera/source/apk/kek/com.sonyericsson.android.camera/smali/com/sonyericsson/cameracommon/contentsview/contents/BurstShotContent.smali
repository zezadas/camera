.class public Lcom/sonyericsson/cameracommon/contentsview/contents/BurstShotContent;
.super Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.source "BurstShotContent.java"


# static fields
.field public static final COUNT_UP_MAX_NUM:I = 0x3e7


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 25
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources;->get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I

    move-result v0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources;->get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;-><init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V

    .line 29
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/BurstShotContent;->createCountText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/BurstShotContent;->mCountText:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private createCountText(I)Ljava/lang/String;
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/16 v2, 0x3e7

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "countText":Ljava/lang/String;
    if-lez p1, :cond_1

    if-gt p1, v2, :cond_1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    if-ge v2, p1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "+"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getExtraIconResourceId()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_burst_icn:I

    return v0
.end method

.method public shouldShowExtraIcon()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowPlayableIcon()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
