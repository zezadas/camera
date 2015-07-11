.class public final enum Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
.super Ljava/lang/Enum;
.source "AutoUploadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoUploadSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->UNKNOWN:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->ON:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->OFF:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->UNKNOWN:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->ON:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->OFF:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->$VALUES:[Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->$VALUES:[Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    return-object v0
.end method
