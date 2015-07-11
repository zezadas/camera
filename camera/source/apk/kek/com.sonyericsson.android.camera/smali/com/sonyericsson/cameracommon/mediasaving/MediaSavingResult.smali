.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
.super Ljava/lang/Enum;
.source "MediaSavingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public static final enum FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public static final enum FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public static final enum SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;


# instance fields
.field public final mResultCode:I

.field public final mSuccess:Z

.field public final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    const-string v1, "SUCCESS"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;-><init>(Ljava/lang/String;IZII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 14
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    const-string v5, "FAIL"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_store_fail_txt:I

    move v6, v3

    move v7, v2

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 18
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    const-string v5, "FAIL_MEMORY_FULL"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_memory_full_save_failed_txt:I

    move v6, v10

    move v7, v2

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .param p3, "success"    # Z
    .param p4, "textId"    # I
    .param p5, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mSuccess:Z

    .line 32
    iput p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mTextId:I

    .line 33
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-object v0
.end method
