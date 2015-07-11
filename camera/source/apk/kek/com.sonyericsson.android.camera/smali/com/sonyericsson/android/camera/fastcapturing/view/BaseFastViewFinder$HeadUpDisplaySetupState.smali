.class public final enum Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;
.super Ljava/lang/Enum;
.source "BaseFastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadUpDisplaySetupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

.field public static final enum PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

.field public static final enum PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

.field public static final enum VIDEO_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

.field public static final enum VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

.field public static final enum VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_STANDBY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_STANDBY"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_PAUSING"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    return-object v0
.end method
