.class public Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;
.super Ljava/lang/Object;
.source "MediaSavingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;
    }
.end annotation


# static fields
.field public static final BURST_DIR_NAME:Ljava/lang/String;

.field public static final EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

.field public static final EXTENDED_VIDEO_STORAGE_URI:Landroid/net/Uri;

.field public static final INVALID_FILE_PATH:Ljava/lang/String; = "/dev/null"

.field public static final MEDIA_TYPE_3GP_EXT:Ljava/lang/String; = ".3gp"

.field public static final MEDIA_TYPE_3GP_MIME:Ljava/lang/String; = "video/3gpp"

.field public static final MEDIA_TYPE_JPEG_EXT:Ljava/lang/String; = ".JPG"

.field public static final MEDIA_TYPE_JPEG_MIME:Ljava/lang/String; = "image/jpeg"

.field public static final MEDIA_TYPE_MPEG4_EXT:Ljava/lang/String; = ".mp4"

.field public static final MEDIA_TYPE_MPEG4_MIME:Ljava/lang/String; = "video/mp4"

.field public static final MEDIA_TYPE_MPO_MIME:Ljava/lang/String; = "image/mpo"

.field public static final PHOTO_STORAGE_URI:Landroid/net/Uri;

.field public static final PHOTO_THUMBNAIL_URI:Landroid/net/Uri;

.field public static final SOMC_FILE_TYPE_NONE:I = 0x0

.field public static final SOMC_FILE_TYPE_SOUND_PHOTO:I = 0x2a

.field public static final SOMC_FILE_TYPE_TIMESHIFT_COVER:I = 0x4

.field public static final SOMC_FILE_TYPE_TIMESHIFT_IMAGE:I = 0x82

.field public static final SOMC_FILE_TYPE_TIMESHIFT_VIDEO:I = 0xc

.field public static final SOMC_FILE_TYPE_TIMESHIFT_VIDEO_120F:I = 0xb

.field public static final STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

.field public static final STORAGE_PRIORITY_INTERNAL:I = 0x1

.field public static final STORAGE_PRIORITY_LOWEST:I = 0x64

.field public static final STORAGE_PRIORITY_SD:I = 0x0

.field public static final THREAD_STORE_VIDEO:Ljava/lang/String; = "Store video thread"

.field public static final TIMESHIFT_DIR_NAME:Ljava/lang/String;

.field public static final TIMESHIFT_RELATIVE_ROOT_DIR_NAME:Ljava/lang/String;

.field public static final TIMESHIFT_VIDEO_120F_DIR_NAME:Ljava/lang/String;

.field public static final VIDEO_STORAGE_URI:Landroid/net/Uri;

.field public static final VIDEO_THUMBNAIL_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://media/external/extended_images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://media/external/extended_video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 34
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->PHOTO_THUMBNAIL_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_THUMBNAIL_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XPERIA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->BURST_DIR_NAME:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XPERIA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TIMESHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->TIMESHIFT_DIR_NAME:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->TIMESHIFT_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->TIMESHIFT_RELATIVE_ROOT_DIR_NAME:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XPERIA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TIMESHIFT_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "120F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->TIMESHIFT_VIDEO_120F_DIR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method
