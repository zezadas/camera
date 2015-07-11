.class public final enum Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;
.super Ljava/lang/Enum;
.source "SstFontUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/font/SstFontUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SstFontType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum CONDENSED:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum HEAVY:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum HEAVY_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum LIGHT:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum MEDIUM:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum ROMAN:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum ULTRA_LIGHT:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

.field public static final enum ULTRA_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "CONDENSED"

    const-string v2, "/system/fonts/.SST-Condensed.ttf"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "CONDENSED_BOLD"

    const-string v2, "/system/fonts/.SST-CondensedBd.ttf"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "HEAVY"

    const-string v2, "/system/fonts/.SST-Heavy.ttf"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->HEAVY:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "HEAVY_ITALIC"

    const-string v2, "/system/fonts/.SST-HeavyItalic.ttf"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->HEAVY_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "LIGHT"

    const-string v2, "/system/fonts/.SST-Light.ttf"

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "LIGHT_ITALIC"

    const/4 v2, 0x5

    const-string v3, "/system/fonts/.SST-LightItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "MEDIUM"

    const/4 v2, 0x6

    const-string v3, "/system/fonts/.SST-Medium.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "MEDIUM_ITALIC"

    const/4 v2, 0x7

    const-string v3, "/system/fonts/.SST-MediumItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "ULTRA_LIGHT"

    const/16 v2, 0x8

    const-string v3, "/system/fonts/.SST-UltraLight.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->ULTRA_LIGHT:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "ULTRA_LIGHT_ITALIC"

    const/16 v2, 0x9

    const-string v3, "/system/fonts/.SST-UltraLightItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->ULTRA_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "BOLD"

    const/16 v2, 0xa

    const-string v3, "/system/fonts/.SSTVietnamese-Bold.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    const-string v1, "ROMAN"

    const/16 v2, 0xb

    const-string v3, "/system/fonts/.SSTVietnamese-Roman.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->ROMAN:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .line 17
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->HEAVY:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->HEAVY_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->ULTRA_LIGHT:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->ULTRA_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->ROMAN:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->mPath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    return-object v0
.end method
