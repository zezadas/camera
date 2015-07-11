.class Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame$CommonHeader;
.super Ljava/lang/Object;
.source "FragmentFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommonHeader"
.end annotation


# static fields
.field static final FIXED_PAYLOAD_TYPE:B = 0x1t

.field static final FIXED_START_BYTE:B = -0x1t

.field static final SIZEOF_PAYLOAD_TYPE:I = 0x1

.field static final SIZEOF_SEQUENCE_NUMBER:I = 0x2

.field static final SIZEOF_START_BYTE:I = 0x1

.field static final SIZEOF_TIMESTAMP:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static size()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x8

    return v0
.end method
