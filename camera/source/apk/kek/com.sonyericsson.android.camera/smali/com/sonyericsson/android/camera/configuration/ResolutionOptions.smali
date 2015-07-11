.class public Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;
.super Ljava/lang/Object;
.source "ResolutionOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;,
        Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;
    }
.end annotation


# static fields
.field private static final sPreviewVideoValueArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResolutionValueArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDefaultResolution:Ljava/lang/String;

.field private final mDefaultVideoSize:Ljava/lang/String;

.field private final mHighQualityVideoSize:I

.field private final mMaxPictureSize:I

.field private final mResolutionOptions:[Ljava/lang/String;

.field private final mVideoSizeOptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->sPreviewVideoValueArray:Landroid/util/SparseArray;

    .line 240
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->sResolutionValueArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput v1, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mMaxPictureSize:I

    .line 290
    iput v1, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mHighQualityVideoSize:I

    .line 291
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 292
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxPictureWidth"    # I
    .param p3, "videoSize"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p2, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mMaxPictureSize:I

    .line 309
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mHighQualityVideoSize:I

    .line 310
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getDefaultResolution(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getResolutionOptions(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getDefaultVideoSize(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getVideoSizeOptions(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 314
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getDefaultVideoSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getVideoSizeOptions(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultResolution(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxPictureSize"    # I

    .prologue
    .line 356
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result v0

    .line 362
    .local v0, "independentOfAspect":Z
    if-eqz v0, :cond_0

    .line 364
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromResolutionMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    move-result-object v2

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mNormalResolutionValue:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->access$600(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)I

    move-result v1

    .line 369
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 367
    .end local v1    # "resId":I
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromResolutionMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    move-result-object v2

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mWideResolutionValue:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->access$700(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)I

    move-result v1

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private static getDefaultVideoSize(I)I
    .locals 1
    .param p0, "videoSize"    # I

    .prologue
    .line 321
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromPreviewVideoMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->mDefaultVideoSizeValue:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->access$300(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;)I

    move-result v0

    return v0
.end method

.method private getDefaultVideoSize(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxPictureSize"    # I
    .param p3, "videoSize"    # I

    .prologue
    .line 377
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromResolutionMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    move-result-object v1

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mDefaultVideoSize:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->access$800(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$DefaltVideoSizeProvider;->get(I)I

    move-result v0

    .line 378
    .local v0, "resId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResolutionOptions(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxPictureSize"    # I

    .prologue
    .line 337
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromResolutionMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    move-result-object v1

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mResolutionOptionsValue:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->access$400(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)I

    move-result v0

    .line 338
    .local v0, "resId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getValueFromPreviewVideoMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->sPreviewVideoValueArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->sPreviewVideoValueArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    goto :goto_0
.end method

.method private static final getValueFromResolutionMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 264
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->sResolutionValueArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 265
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->sResolutionValueArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->VGA:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    goto :goto_0
.end method

.method private static getVideoSizeOptions(I)I
    .locals 1
    .param p0, "videoSize"    # I

    .prologue
    .line 317
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromPreviewVideoMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->mVideoSizeOptionsValue:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->access$200(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;)I

    move-result v0

    return v0
.end method

.method private getVideoSizeOptions(Landroid/content/Context;II)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxPictureSize"    # I
    .param p3, "videoSize"    # I

    .prologue
    .line 346
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getValueFromResolutionMap(I)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;

    move-result-object v1

    # getter for: Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->mVideoSizeOptions:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;->access$500(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$ResolutionDependentValues$VideoSizeOptionsProvider;->get(I)I

    move-result v0

    .line 347
    .local v0, "resId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDefaultResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object v0
.end method

.method public getHighQualityPreviewSize()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mHighQualityVideoSize:I

    return v0
.end method

.method public getPictureSize()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mMaxPictureSize:I

    return v0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
