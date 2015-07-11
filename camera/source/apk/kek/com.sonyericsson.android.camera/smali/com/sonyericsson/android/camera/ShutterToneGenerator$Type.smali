.class public final enum Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
.super Ljava/lang/Enum;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ShutterToneGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_SELFTIMER_2SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mIsCommonSound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_AF_SUCCESS"

    const-string v2, "common/af_success.m4a"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_SELFTIMER_2SEC"

    const-string v2, "common/selftimer_2sec.m4a"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_2SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_SELFTIMER_10SEC"

    const-string v2, "common/selftimer_10sec.m4a"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_OFF"

    const-string v2, "no_sound.m4a"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_BURST_SHUTTER"

    const-string v2, "shutter_done.wav"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_FAST_CAPTURE_SHUTTER_DONE"

    const/4 v2, 0x5

    const-string v3, "fastcapture_launch_and_capture_done.wav"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_2SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->$VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "common"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mFileName:Ljava/lang/String;

    .line 55
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mIsCommonSound:Z

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->$VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object v0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isCommonSound()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mIsCommonSound:Z

    return v0
.end method
