.class public final enum Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;
.super Ljava/lang/Enum;
.source "SizeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/device/SizeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_15MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_20MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_20MP_HDR:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_2MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_3MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_8MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

.field public static final enum SIZE_8MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;


# instance fields
.field height:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_20MP"

    const/16 v2, 0x1480

    const/16 v3, 0xf60

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_20MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_20MP_HDR"

    const/16 v2, 0x1386

    const/16 v3, 0xea4

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_20MP_HDR:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 109
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_15MP_WIDE"

    const/16 v2, 0x1480

    const/16 v3, 0xb88

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_15MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 112
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_8MP"

    const/16 v2, 0xcc0

    const/16 v3, 0x990

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_8MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_8MP_WIDE"

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_8MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 118
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_3MP"

    const/4 v2, 0x5

    const/16 v3, 0x800

    const/16 v4, 0x600

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_3MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 121
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    const-string v1, "SIZE_2MP_WIDE"

    const/4 v2, 0x6

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_2MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_20MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_20MP_HDR:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_15MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_8MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_8MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_3MP:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->SIZE_2MP_WIDE:Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->$VALUES:[Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->width:I

    .line 130
    iput p4, p0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->height:I

    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->$VALUES:[Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonyericsson/cameracommon/device/SizeConstants$PictureSize;->width:I

    return v0
.end method
