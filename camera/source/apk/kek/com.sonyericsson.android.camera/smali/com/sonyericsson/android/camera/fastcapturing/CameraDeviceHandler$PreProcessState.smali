.class public final enum Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;
.super Ljava/lang/Enum;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreProcessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

.field public static final enum NOT_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 239
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    const-string v1, "PRE_SCAN_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 240
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    const-string v1, "PRE_SCAN_DONE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 241
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    const-string v1, "PRE_CAPTURE_STARTED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 242
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    const-string v1, "PRE_CAPTURE_DONE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 237
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

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
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    return-object v0
.end method
