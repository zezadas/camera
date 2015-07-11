.class public final enum Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

.field public static final enum JPEG:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;


# instance fields
.field private final mFormatCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    const-string v1, "JPEG"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->JPEG:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->JPEG:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->$VALUES:[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "formatCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->mFormatCode:I

    .line 36
    return-void
.end method

.method public static fromFormatCode(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    .locals 6
    .param p0, "formatCode"    # I

    .prologue
    .line 45
    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->values()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 46
    .local v1, "eachFormat":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->getFormatCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 47
    return-object v1

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "eachFormat":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported FrameColorFormat."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->$VALUES:[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatCode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->mFormatCode:I

    return v0
.end method
