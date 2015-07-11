.class public final enum Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
.super Ljava/lang/Enum;
.source "RectangleColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/focusview/RectangleColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum AF_FAIL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum AF_SUCCESS:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum RECORDING:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 13
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v1, "AF_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_SUCCESS:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 14
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v1, "AF_FAIL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_FAIL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 15
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->RECORDING:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_SUCCESS:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_FAIL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->RECORDING:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    return-object v0
.end method
