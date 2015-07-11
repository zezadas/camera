.class public final enum Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchEventSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

.field public static final enum CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

.field public static final enum PHOTO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

.field public static final enum VIDEO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 451
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->UNKNOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    .line 452
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    const-string v1, "CAPTURE_AREA"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    .line 453
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    .line 454
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    const-string v1, "PHOTO_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    .line 455
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    const-string v1, "VIDEO_BUTTON"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    .line 450
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->UNKNOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

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
    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 450
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    return-object v0
.end method
