.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;
.super Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;
.source "Yuv2JpegConvertorMultiple.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;-><init>()V

    .line 33
    :try_start_0
    const-string v0, "com.sonymobile.imageprocessor.jpegencoder.JpegEncoder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    invoke-static {}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->create()Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public convert(Landroid/graphics/YuvImage;II)[B
    .locals 2
    .param p1, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "plainJpeg":[B
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    invoke-static {v1, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpegWithImageProcessor(Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;Landroid/graphics/YuvImage;II)[B

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpegWithoutImageProcessor(Landroid/graphics/YuvImage;II)[B

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->release()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2JpegConvertorMultiple;->mEncoder:Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    .line 49
    :cond_0
    return-void
.end method
