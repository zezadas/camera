.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailStorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_NO_MEMORY_CARD"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_READ_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 51
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_ACCESS"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FORMAT"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_SHARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY_LOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_CHECKING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_NO_DCIM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method
