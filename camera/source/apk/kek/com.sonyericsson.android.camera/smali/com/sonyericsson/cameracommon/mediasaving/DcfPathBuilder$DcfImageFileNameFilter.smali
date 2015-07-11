.class Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcfImageFileNameFilter"
.end annotation


# instance fields
.field private mFileNo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I

    return p1
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 129
    const/4 v2, 0x4

    const/16 v5, 0x8

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "id":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I

    if-lt v1, v2, :cond_0

    .line 131
    if-gt v3, v1, :cond_0

    const/16 v2, 0x270f

    if-gt v1, v2, :cond_0

    .line 132
    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 140
    .end local v1    # "id":I
    :goto_0
    return v2

    .line 137
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, v4

    .line 138
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v2, v4

    .line 140
    goto :goto_0
.end method
