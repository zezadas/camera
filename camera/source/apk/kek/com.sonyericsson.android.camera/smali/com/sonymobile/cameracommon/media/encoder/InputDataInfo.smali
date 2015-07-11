.class public Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
.super Ljava/lang/Object;
.source "InputDataInfo.java"


# instance fields
.field public final codec:Landroid/media/MediaCodec;

.field public final codecFormat:Landroid/media/MediaFormat;

.field public final source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;


# direct methods
.method private constructor <init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)V
    .locals 0
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "source"    # Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codecFormat:Landroid/media/MediaFormat;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    .line 29
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    .line 30
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "source"    # Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    .prologue
    .line 40
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)V

    return-object v0
.end method

.method public static create(Landroid/media/MediaFormat;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .locals 3
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "source"    # Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 48
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 50
    invoke-static {p0, v0, p1}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codecFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
