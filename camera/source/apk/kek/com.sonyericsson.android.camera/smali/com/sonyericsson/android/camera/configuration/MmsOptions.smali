.class public Lcom/sonyericsson/android/camera/configuration/MmsOptions;
.super Ljava/lang/Object;
.source "MmsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;,
        Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;,
        Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;
    }
.end annotation


# static fields
.field private static final DEFAULT_BIT_RATE:I = 0x17700

.field private static final DEFAULT_MAX_DURATION:I = 0x7fffffff

.field private static final DEFAULT_MAX_SIZE:J = 0x46cd0L

.field private static final DEFAULT_OUTPUT_FORMAT:I = 0x1

.field private static final DEFAULT_QUALITY:I = 0x2

.field private static final DEFAULT_RESOLUTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_INT:I = -0x1

.field private static final MAX_SIZE_MIN:J = 0x2800L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mBitRate:I

.field public final mMaxDuration:I

.field public final mMaxFileSizeBytes:J

.field public final mOutputFormat:I

.field public final mPreloadProfile:Landroid/media/CamcorderProfile;

.field public final mQuality:I

.field public final mRecommendSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    const-class v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->DEFAULT_RESOLUTIONS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxFileSizeBytes:J
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$000(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxFileSizeBytes:J

    .line 62
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxDuration:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$100(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxDuration:I

    .line 63
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mBitRate:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$200(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mBitRate:I

    .line 66
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mQuality:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$300(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I

    move-result v0

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mQuality:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$300(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 80
    :goto_0
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mOutputFormat:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$400(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mOutputFormat:I

    .line 81
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mRecommendSizeList:Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->access$500(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mRecommendSizeList:Ljava/util/List;

    .line 95
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultQuality()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    .line 73
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mPreloadProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mPreloadProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->DEFAULT_RESOLUTIONS:Ljava/util/List;

    return-object v0
.end method

.method private isSupported(Landroid/graphics/Rect;Ljava/util/List;)Z
    .locals 4
    .param p1, "recommend"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "supportedSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 127
    .local v0, "i":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 131
    .end local v0    # "i":Landroid/graphics/Rect;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRecommendSize(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "supportedSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mRecommendSizeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 103
    .local v1, "reccomend":Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->isSupported(Landroid/graphics/Rect;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    .end local v1    # "reccomend":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max-bytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxFileSizeBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",bit-raite:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mBitRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",quality:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mOutputFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, ",resolution:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mRecommendSizeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 119
    .local v0, "i":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    .end local v0    # "i":Landroid/graphics/Rect;
    :cond_0
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
