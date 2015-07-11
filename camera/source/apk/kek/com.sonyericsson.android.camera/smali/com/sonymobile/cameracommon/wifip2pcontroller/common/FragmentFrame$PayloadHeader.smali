.class Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame$PayloadHeader;
.super Ljava/lang/Object;
.source "FragmentFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PayloadHeader"
.end annotation


# static fields
.field static final FIXED_START_CODE_0:B = 0x24t

.field static final FIXED_START_CODE_1:B = 0x35t

.field static final FIXED_START_CODE_2:B = 0x68t

.field static final FIXED_START_CODE_3:B = 0x79t

.field static final SIZEOF_BACK_RESERVED:I = 0x5b

.field static final SIZEOF_DENOMINATOR:I = 0x4

.field static final SIZEOF_EXTENSION:I = 0x73

.field static final SIZEOF_FLAG:I = 0x1

.field static final SIZEOF_FORE_RESERVED:I = 0x4

.field static final SIZEOF_FRAME_COLOR_FORMAT:I = 0x4

.field static final SIZEOF_FRAME_PIXEL_HEIGHT:I = 0x4

.field static final SIZEOF_FRAME_PIXEL_WIDTH:I = 0x4

.field static final SIZEOF_FRAME_STREAM_ID:I = 0x4

.field static final SIZEOF_NUMERATOR:I = 0x4

.field static final SIZEOF_PADDING:I = 0x1

.field static final SIZEOF_PAYLOAD_SIZE:I = 0x3

.field static final SIZEOF_START_CODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static size()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x80

    return v0
.end method
