.class final enum Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;
.super Ljava/lang/Enum;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "START"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "START_SECURE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 80
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "ACTIVITY_RESUMED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "ACTIVITY_PAUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-object v0
.end method
