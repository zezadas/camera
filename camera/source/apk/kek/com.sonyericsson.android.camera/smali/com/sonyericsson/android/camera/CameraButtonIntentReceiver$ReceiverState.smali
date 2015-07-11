.class final enum Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
.super Ljava/lang/Enum;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReceiverState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-object v0
.end method
