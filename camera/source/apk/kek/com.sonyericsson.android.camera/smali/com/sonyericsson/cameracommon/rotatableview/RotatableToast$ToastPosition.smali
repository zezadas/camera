.class public final enum Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
.super Ljava/lang/Enum;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 107
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object v0
.end method
