.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum ADDON_FW:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum FACE_FUSION_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum MULTI_CAMERA_CONNECTION_FAILED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum MUlTI_CAMERA_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

.field public static final enum THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "ADDON_FW"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "THERMAL_MITIGATION"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "MULTI_CAMERA_CONNECTION_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->MULTI_CAMERA_CONNECTION_FAILED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "CAMERA_NOT_AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "CAPTURE_OPERATION"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "MUlTI_CAMERA_OPERATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->MUlTI_CAMERA_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "FACE_FUSION_OPERATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->FACE_FUSION_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "PANORAMA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "RECORDING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 32
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "SETTINGS_PHOTO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "SETTINGS_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const-string v1, "SETTINGS_COMMON"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->MULTI_CAMERA_CONNECTION_FAILED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->MUlTI_CAMERA_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->FACE_FUSION_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    return-object v0
.end method
