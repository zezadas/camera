.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
.super Ljava/lang/Enum;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum FULL:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field static final TAG:Ljava/lang/String;

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;


# instance fields
.field private final mDetailStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "REMOVED"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "AVAILABLE"

    new-array v2, v6, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 41
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "FULL"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->FULL:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 29
    new-array v0, v8, [Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->FULL:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 48
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->TAG:Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .locals 1
    .param p3, "states"    # [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->mDetailStateList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .locals 7
    .param p0, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 57
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 58
    .local v1, "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    iget-object v6, v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->mDetailStateList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 59
    .local v2, "envState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    .end local v1    # "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .end local v2    # "envState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v1

    .line 57
    .restart local v1    # "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 64
    .end local v1    # "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    :cond_2
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method
