.class public final enum Lcom/sonyericsson/cameracommon/capability/CameraSensor;
.super Ljava/lang/Enum;
.source "CameraSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capability/CameraSensor$1;,
        Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/capability/CameraSensor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_13M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_20M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_23M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_2M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_5M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_8M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_8M_INDEPENDENT_HDR:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

.field public static final enum CAMERA_SENSOR_VGA:Lcom/sonyericsson/cameracommon/capability/CameraSensor;


# instance fields
.field public final defaultPhotoSize:Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

.field private final mIsIndependentHdrSupported:Z

.field public final maxSizeList:[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/16 v6, 0xcc0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_23M"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v3, 0x1590

    const/16 v4, 0x102c

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_23M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_20M"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v3, 0x1480

    const/16 v4, 0xf60

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_20M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_13M"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v3, 0x1020

    const/16 v4, 0xc18

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0xf50

    const/16 v4, 0x89c

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_13M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_8M"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v3, 0x990

    invoke-static {v6, v3}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0xc20

    const/16 v4, 0x6d2

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_8M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_8M_INDEPENDENT_HDR"

    const/4 v2, 0x4

    new-array v3, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v4, 0x990

    invoke-static {v6, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x72c

    invoke-static {v6, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Z)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_8M_INDEPENDENT_HDR:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_5M"

    const/4 v2, 0x5

    new-array v3, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v4, 0xa20

    const/16 v6, 0x798

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0xa20

    const/16 v6, 0x5b2

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_5M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_2M"

    const/4 v2, 0x6

    new-array v3, v8, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v4, 0x660

    const/16 v6, 0x4c8

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x780

    const/16 v6, 0x438

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x780

    const/16 v6, 0x438

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_2M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    const-string v1, "CAMERA_SENSOR_VGA"

    const/4 v2, 0x7

    new-array v3, v5, [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/16 v4, 0x280

    const/16 v6, 0x1e0

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x280

    const/16 v6, 0x1e0

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_VGA:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    sget-object v1, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_23M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_20M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_13M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_8M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_8M_INDEPENDENT_HDR:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_5M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_2M:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->CAMERA_SENSOR_VGA:Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->$VALUES:[Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)V
    .locals 1
    .param p3, "maxSizeList"    # [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    .param p4, "defaultPhotoSize"    # Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;",
            "Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->maxSizeList:[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    .line 73
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->defaultPhotoSize:Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->mIsIndependentHdrSupported:Z

    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;Z)V
    .locals 0
    .param p3, "maxSizeList"    # [Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    .param p4, "defaultPhotoSize"    # Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    .param p5, "isIndependentHdr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;",
            "Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->maxSizeList:[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    .line 79
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->defaultPhotoSize:Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    .line 80
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->mIsIndependentHdrSupported:Z

    .line 81
    return-void
.end method

.method public static findByMaxPixels(Landroid/hardware/Camera$Parameters;II)Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    .locals 8
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 97
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->isIndependentHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v4

    .line 98
    .local v4, "isIndependentHdrSupported":Z
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    move-result-object v6

    .line 100
    .local v6, "max":Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    const/4 v1, 0x0

    .line 101
    .local v1, "candidate":Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    invoke-static {}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->values()[Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    .line 102
    .local v2, "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    invoke-virtual {v2, v6}, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->matchMaxPixels(Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    iget-boolean v7, v2, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->mIsIndependentHdrSupported:Z

    if-ne v7, v4, :cond_0

    .line 113
    .end local v2    # "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    :goto_1
    return-object v2

    .line 109
    .restart local v2    # "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    :cond_0
    move-object v1, v2

    .line 101
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    :cond_2
    move-object v2, v1

    .line 113
    goto :goto_1
.end method

.method public static isIndependentHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    :cond_0
    const-string v1, "hdr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static size(II)Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;-><init>(IILcom/sonyericsson/cameracommon/capability/CameraSensor$1;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/capability/CameraSensor;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->$VALUES:[Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/capability/CameraSensor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/capability/CameraSensor;

    return-object v0
.end method


# virtual methods
.method public matchMaxPixels(Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;)Z
    .locals 6
    .param p1, "max"    # Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor;->maxSizeList:[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 118
    .local v1, "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    iget v4, v1, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;->width:I

    iget v5, p1, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;->width:I

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;->height:I

    iget v5, p1, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;->height:I

    if-ne v4, v5, :cond_0

    .line 119
    const/4 v4, 0x1

    .line 122
    .end local v1    # "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    :goto_1
    return v4

    .line 117
    .restart local v1    # "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
