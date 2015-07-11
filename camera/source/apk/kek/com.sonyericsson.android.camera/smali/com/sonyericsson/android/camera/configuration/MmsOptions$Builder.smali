.class Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
.super Ljava/lang/Object;
.source "MmsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/MmsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# static fields
.field private static final RESOLUTION_SEPARATOR:Ljava/lang/String; = "x"

.field private static final TOKEN_SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private mBitRate:I

.field private mMaxDuration:I

.field private mMaxFileSizeBytes:J

.field private mOutputFormat:I

.field private mQuality:I

.field private mRecommendSizeList:Ljava/util/List;
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
.method constructor <init>()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-wide/32 v0, 0x46cd0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxFileSizeBytes:J

    .line 210
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxDuration:I

    .line 211
    const v0, 0x17700

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mBitRate:I

    .line 212
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mQuality:I

    .line 213
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mOutputFormat:I

    .line 214
    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions;->DEFAULT_RESOLUTIONS:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->access$600()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mRecommendSizeList:Ljava/util/List;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxFileSizeBytes:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 194
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 194
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mBitRate:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 194
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mQuality:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 194
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mOutputFormat:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mRecommendSizeList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method bitRate(I)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    .locals 1
    .param p1, "bitRate"    # I

    .prologue
    .line 246
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 251
    :goto_0
    return-object p0

    .line 250
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mBitRate:I

    goto :goto_0
.end method

.method build()Lcom/sonyericsson/android/camera/configuration/MmsOptions;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions;-><init>(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V

    return-object v0
.end method

.method codec(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    .locals 1
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-object p0

    .line 262
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->from(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->mQuality:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;->access$700(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Codec;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mQuality:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method maxDuration(I)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    .locals 1
    .param p1, "maxDuration"    # I

    .prologue
    .line 235
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 240
    :goto_0
    return-object p0

    .line 239
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxDuration:I

    goto :goto_0
.end method

.method maxFileSizeBytes(J)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    .locals 3
    .param p1, "maxFileSizeBytes"    # J

    .prologue
    .line 224
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-object p0

    .line 228
    :cond_0
    const-wide/16 v0, 0x2800

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mMaxFileSizeBytes:J

    goto :goto_0
.end method

.method mimeType(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 285
    :goto_0
    return-object p0

    .line 279
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->from(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->mFormat:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;->access$800(Lcom/sonyericsson/android/camera/configuration/MmsOptions$MimeType;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mOutputFormat:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method recommendSizeList(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;
    .locals 12
    .param p1, "recommendSizeList"    # Ljava/lang/String;

    .prologue
    .line 291
    if-nez p1, :cond_1

    .line 315
    :cond_0
    return-object p0

    .line 296
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mRecommendSizeList:Ljava/util/List;

    .line 297
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "tokenList":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 299
    .local v4, "token":Ljava/lang/String;
    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "resolution":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 298
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mRecommendSizeList:Ljava/util/List;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v6

    goto :goto_1
.end method
