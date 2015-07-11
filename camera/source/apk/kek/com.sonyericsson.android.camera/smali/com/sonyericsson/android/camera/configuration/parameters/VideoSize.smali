.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
.super Ljava/lang/Enum;
.source "VideoSize.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;,
        Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum QVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private static final TAG:Ljava/lang/String; = "VideoSize"

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private static final sParameterTextId:I = 0x7f0900c5


# instance fields
.field private mAverageFileSize:J

.field private final mDefaultFrameRate:I

.field private final mDefaultQuality:I

.field private final mIconId:I

.field private final mIsConstraint:Z

.field private mMinFileSize:J

.field private mTextId:I

.field private mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

.field private mVideoRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "FOUR_K_UHD"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf00

    const/16 v9, 0x870

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "FULL_HD_60FPS"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7f0901ab

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x780

    const/16 v9, 0x438

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/16 v9, 0x3c

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "FULL_HD"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x7f0901ac

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x780

    const/16 v9, 0x438

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "HD"

    const/4 v2, 0x3

    const/4 v3, -0x1

    const v4, 0x7f0901ad

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "FWVGA"

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, -0x1

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x360

    const/16 v9, 0x1e0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "VGA"

    const/4 v2, 0x5

    const/4 v3, -0x1

    const v4, 0x7f0901ae

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x280

    const/16 v9, 0x1e0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "QVGA"

    const/4 v2, 0x6

    const/4 v3, -0x1

    const v4, 0x7f0901af

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x140

    const/16 v9, 0xf0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->QVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "MMS"

    const/4 v2, 0x7

    const/4 v3, -0x1

    const v4, 0x7f09006c

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xb0

    const/16 v9, 0x90

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0xf

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->QVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/graphics/Rect;ZIII)V
    .locals 12
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "videoRect"    # Landroid/graphics/Rect;
    .param p6, "isConstraint"    # Z
    .param p7, "quality"    # I
    .param p8, "defaultQuality"    # I
    .param p9, "frameRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "ZIII)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    .line 144
    move/from16 v0, p4

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    .line 145
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 146
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    .line 147
    move/from16 v0, p8

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultQuality:I

    .line 148
    move/from16 v0, p9

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultFrameRate:I

    .line 150
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;-><init>()V

    iget v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultQuality:I

    move/from16 v0, p7

    invoke-virtual {v3, v0, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->quality(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->frameRate(I)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->build()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v8

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v8

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v3, v8, :cond_1

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v8, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v10, v3

    div-double v6, v8, v10

    .line 159
    .local v6, "widthRatio":D
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v8, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v3

    div-double v4, v8, v10

    .line 162
    .local v4, "heightRatio":D
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget-object v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 163
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget-object v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 165
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget-object v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v8

    iget v8, v8, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    mul-double/2addr v8, v4

    double-to-int v8, v8

    iput v8, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 170
    .end local v4    # "heightRatio":D
    .end local v6    # "widthRatio":D
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultQuality:I

    invoke-static {v3, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAudioBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v2

    .line 171
    .local v2, "audioBitRate":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/CameraSize;->getAverageFileSize(II)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mAverageFileSize:J

    .line 173
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/CameraSize;->getMinFileSize(II)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mMinFileSize:J

    .line 175
    return-void
.end method

.method private static equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "target"    # Landroid/graphics/Rect;
    .param p1, "supported"    # Landroid/graphics/Rect;

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Ljava/lang/String;
    .locals 6
    .param p0, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;
    .param p1, "list"    # Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .param p2, "videoSizeoption"    # [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide v0

    .line 400
    .local v0, "quality":J
    const/4 v3, 0x0

    .line 401
    .local v3, "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 403
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 418
    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 419
    iget-object v4, p1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v2

    .line 429
    :goto_1
    return-object v2

    .line 404
    :cond_1
    const-wide/16 v4, 0x5

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 407
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 410
    :cond_3
    const-wide/16 v4, 0x4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 411
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 412
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 413
    :cond_4
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 421
    :cond_5
    invoke-static {p0, v3, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    .line 423
    if-eqz v3, :cond_6

    .line 424
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 426
    :cond_6
    iget-object v4, p1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getAudioBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 1
    .param p0, "profile"    # Landroid/media/CamcorderProfile;
    .param p1, "quality"    # I

    .prologue
    .line 753
    if-eqz p0, :cond_0

    .line 754
    iget v0, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 761
    :goto_0
    return v0

    .line 758
    :cond_0
    if-nez p1, :cond_1

    .line 759
    const/16 v0, 0x1388

    goto :goto_0

    .line 761
    :cond_1
    const v0, 0x1f400

    goto :goto_0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 5
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;
    .param p1, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;
    .param p2, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 382
    iget v4, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 383
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz v4, :cond_0

    .line 384
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    .line 385
    .local v3, "videoSizeoption":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-static {p1, v0, v3, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .end local v3    # "videoSizeoption":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    return-object v4

    .line 388
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v4, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 389
    .local v1, "resolution":Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 6
    .param p0, "customizedOptions"    # [Ljava/lang/String;

    .prologue
    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, "expectedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;>;"
    if-eqz p0, :cond_0

    .line 370
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 371
    .local v4, "value":Ljava/lang/String;
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    .line 376
    :goto_1
    return-object v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_1
.end method

.method private static getOneShotOptions(Ljava/lang/String;Ljava/util/List;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 6
    .param p0, "size"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/sonyericsson/android/camera/configuration/Configurations;",
            ")[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;"
        }
    .end annotation

    .prologue
    .local p1, "supportedVideoSize":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v5, 0x0

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;>;"
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    .line 345
    .local v3, "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 347
    .local v2, "supportedValue":Landroid/graphics/Rect;
    iget-object v4, v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v3, v4, :cond_1

    .line 349
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->updateMmsProfile(Lcom/sonyericsson/android/camera/configuration/MmsOptions;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-array v4, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 360
    .end local v2    # "supportedValue":Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 354
    .restart local v2    # "supportedValue":Landroid/graphics/Rect;
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-array v4, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 360
    .end local v2    # "supportedValue":Landroid/graphics/Rect;
    :cond_2
    new-array v4, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 19
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;
    .param p1, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v11

    .line 255
    .local v11, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v0, v11, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 257
    .local v14, "supportedVideoSize":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v7, 0x0

    .line 258
    .local v7, "isFWVGAsupported":Z
    const/4 v9, 0x0

    .line 259
    .local v9, "isVGAsupported":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 260
    .local v13, "supportedValue":Landroid/graphics/Rect;
    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 261
    const/4 v9, 0x1

    goto :goto_0

    .line 262
    :cond_1
    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 263
    const/4 v7, 0x1

    goto :goto_0

    .line 267
    .end local v13    # "supportedValue":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    move/from16 v17, v0

    sget-object v18, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultFrameRate:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFullHdVideoFpsSupported(II)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 271
    .local v8, "isFullHD60FpsSupported":Ljava/lang/Boolean;
    iget-object v0, v11, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getVideoSizeOptions()[Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "array":[Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    .line 273
    .local v4, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v12, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;>;"
    move-object v2, v4

    .local v2, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v10, :cond_8

    aget-object v15, v2, v6

    .line 277
    .local v15, "value":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "i$":I
    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 278
    .restart local v13    # "supportedValue":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 279
    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 309
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isMmsSupported()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->updateMmsProfile(Lcom/sonyericsson/android/camera/configuration/MmsOptions;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 285
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 289
    :pswitch_1
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 290
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 294
    :pswitch_2
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 296
    const v16, 0x7f0901ac

    move/from16 v0, v16

    iput v0, v15, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    .line 305
    :goto_3
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    :cond_4
    const v16, 0x7f0901aa

    move/from16 v0, v16

    iput v0, v15, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    goto :goto_3

    .line 303
    :cond_5
    const v16, 0x7f0901aa

    move/from16 v0, v16

    iput v0, v15, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    goto :goto_3

    .line 316
    .end local v13    # "supportedValue":Landroid/graphics/Rect;
    :cond_6
    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 275
    :cond_7
    :goto_4
    add-int/lit8 v5, v6, 0x1

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_1

    .line 318
    .end local v6    # "i$":I
    .local v5, "i$":Ljava/util/Iterator;
    :pswitch_3
    if-eqz v9, :cond_7

    if-nez v7, :cond_7

    .line 320
    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 330
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v15    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .restart local v6    # "i$":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_9

    .line 331
    iget-object v0, v11, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->UX_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/android/camera/util/capability/UxOptions;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->getVideoSizeForOneShot()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOneShotOptions(Ljava/lang/String;Ljava/util/List;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v16

    .line 336
    :goto_5
    return-object v16

    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_5

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 316
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method

.method public static getValueFromFrameSize(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 740
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 741
    .local v4, "value":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 742
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v5, p0, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 749
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :goto_1
    return-object v4

    .line 740
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 8
    .param p0, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p2, "videoSizeoption"    # [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 449
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v4

    .line 450
    .local v4, "videoInfo":Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v5

    int-to-long v2, v5

    .line 451
    .local v2, "oneShotVideoDuration":J
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v0

    .line 455
    .local v0, "intentDuration":J
    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    .line 493
    .end local p1    # "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :cond_0
    :goto_0
    return-object p1

    .line 461
    .restart local p1    # "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :cond_1
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v6, 0xbb8

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 463
    :cond_2
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 486
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 465
    :pswitch_2
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, v5, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    goto :goto_0

    .line 469
    :pswitch_3
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, v5, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    goto :goto_0

    .line 472
    :cond_3
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 473
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, v5, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    goto :goto_0

    .line 476
    :cond_4
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, v5, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    goto :goto_0

    .line 482
    :pswitch_4
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, v5, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 5
    .param p0, "sizeList"    # [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 434
    .local v3, "one":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    const/4 v4, 0x1

    .line 438
    .end local v3    # "one":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :goto_1
    return v4

    .line 433
    .restart local v3    # "one":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v3    # "one":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static log(Landroid/media/CamcorderProfile;)V
    .locals 0
    .param p0, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 592
    return-void
.end method

.method public static updateMmsProfile(Lcom/sonyericsson/android/camera/configuration/MmsOptions;Ljava/util/List;)Z
    .locals 6
    .param p0, "options"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/MmsOptions;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "supportedPreviewList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->getRecommendSize(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    .line 534
    .local v1, "previewSize":Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 543
    const/4 v2, 0x0

    .line 564
    :goto_0
    return v2

    .line 546
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v1, v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 547
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;-><init>()V

    iget v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mQuality:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->quality(I)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mPreloadProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->preloadProfile(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mOutputFormat:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->outputFormat(I)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->build()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    .line 552
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mBitRate:I

    iput v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 553
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 554
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 556
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget v3, v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultQuality:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAudioBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v0

    .line 559
    .local v0, "audioBitRate":I
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget v3, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mBitRate:I

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/CameraSize;->getAverageFileSize(II)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mAverageFileSize:J

    .line 560
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget v3, p0, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mBitRate:I

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/CameraSize;->getMinFileSize(II)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mMinFileSize:J

    .line 564
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 188
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 189
    return-void
.end method

.method public getAverageFileSize()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mAverageFileSize:J

    return-wide v0
.end method

.method public getDefaultQuality()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultQuality:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    return v0
.end method

.method public getMinFileSize()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mMinFileSize:J

    return-wide v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 507
    const v0, 0x7f0900c5

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 516
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFrameRate()I
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 766
    .local v0, "profile":Landroid/media/CamcorderProfile;
    if-eqz v0, :cond_0

    .line 767
    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 771
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mDefaultFrameRate:I

    goto :goto_0
.end method

.method public getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoProfile:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    return-object v0
.end method

.method public getVideoRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isConstraint()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return v0
.end method
