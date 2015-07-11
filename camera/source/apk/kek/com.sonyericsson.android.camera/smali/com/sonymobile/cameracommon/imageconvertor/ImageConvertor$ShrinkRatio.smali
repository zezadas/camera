.class public final enum Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;
.super Ljava/lang/Enum;
.source "ImageConvertor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShrinkRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

.field public static final enum HALF:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

.field public static final enum ONE:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

.field public static final enum ONE_EIGHTH:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

.field public static final enum QUARTER:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;


# instance fields
.field public final shrinkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 119
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v5, v3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->ONE:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .line 120
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    const-string v1, "HALF"

    invoke-direct {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->HALF:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .line 121
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    const-string v1, "QUARTER"

    invoke-direct {v0, v1, v4, v7}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->QUARTER:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .line 122
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    const-string v1, "ONE_EIGHTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->ONE_EIGHTH:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .line 118
    new-array v0, v7, [Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    sget-object v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->ONE:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->HALF:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->QUARTER:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->ONE_EIGHTH:Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->$VALUES:[Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ratio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput p3, p0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->$VALUES:[Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    return-object v0
.end method
