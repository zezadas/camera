.class public final enum Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
.super Ljava/lang/Enum;
.source "ControllerEventSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/controller/ControllerEventSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum AUTO_STATE_TRANSITION:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum DEVICE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum PAUSE_RESUME_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field public static final enum VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;


# instance fields
.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "KEY"

    invoke-direct {v0, v1, v5, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "TOUCH"

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "TOUCH_FACE"

    invoke-direct {v0, v1, v6, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "PHOTO_BUTTON"

    invoke-direct {v0, v1, v7, v5}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "VIDEO_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "PAUSE_RESUME_BUTTON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PAUSE_RESUME_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "AUTO_STATE_TRANSITION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->AUTO_STATE_TRANSITION:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "DEVICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->DEVICE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-string v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PAUSE_RESUME_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->AUTO_STATE_TRANSITION:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->DEVICE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->$VALUES:[Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->mType:I

    .line 40
    return-void
.end method

.method public static getButtonEvent(I)Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 54
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PAUSE_RESUME_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->$VALUES:[Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    return-object v0
.end method
