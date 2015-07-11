.class public Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;
.super Ljava/lang/Object;
.source "QueryParameterAdapter.java"


# static fields
.field public static final MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

.field public static final MPO_3DPICTURES_DATA:Ljava/lang/String; = ""

.field public static final MPO_3DPICTURES_DATE_TAKEN:Ljava/lang/String; = ""

.field public static final MPO_3DPICTURES_ID:Ljava/lang/String; = ""

.field public static final MPO_3DPICTURES_MIME_TYPE:Ljava/lang/String; = ""

.field public static final MPO_3DPICTURES_MINI_THUMB_MAGIC:Ljava/lang/String; = ""

.field public static final MPO_3DPICTURES_TYPE:Ljava/lang/String; = ""

.field public static final MPO_THUMB_MICRO_KIND:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "kind"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
