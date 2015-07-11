.class public final enum Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;
.super Ljava/lang/Enum;
.source "CameraWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

.field public static final enum CAPTURING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

.field public static final enum PAUSING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

.field public static final enum STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->CAPTURING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    .line 284
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    const-string v1, "PAUSING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->PAUSING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    .line 285
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    const-string v1, "STANDBY"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->CAPTURING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->PAUSING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

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
    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 282
    const-class v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    return-object v0
.end method
