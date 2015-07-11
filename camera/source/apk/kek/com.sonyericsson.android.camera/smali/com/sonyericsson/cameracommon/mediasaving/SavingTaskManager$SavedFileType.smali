.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
.super Ljava/lang/Enum;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SavedFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

.field public static final enum BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

.field public static final enum PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

.field public static final enum PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

.field public static final enum TIME_SHIFT:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

.field public static final enum VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const-string v1, "PHOTO_DURING_REC"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 86
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 87
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 88
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const-string v1, "TIME_SHIFT"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    return-object v0
.end method
