.class final enum Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
.super Ljava/lang/Enum;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BurstStorageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

.field public static final enum STORAGE_FULL:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

.field public static final enum STORAGE_READY:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2379
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    const-string v1, "STORAGE_READY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_READY:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    .line 2380
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    const-string v1, "STORAGE_FULL"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_FULL:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    .line 2381
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    .line 2378
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_READY:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_FULL:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

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
    .line 2378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2378
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
    .locals 1

    .prologue
    .line 2378
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    return-object v0
.end method
