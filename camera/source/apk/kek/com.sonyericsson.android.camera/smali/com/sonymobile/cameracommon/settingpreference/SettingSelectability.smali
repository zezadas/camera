.class public final enum Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;
.super Ljava/lang/Enum;
.source "SettingSelectability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

.field public static final enum FIX:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

.field public static final enum SELECTABLE:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

.field public static final enum UNSUPPORTED:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    const-string v1, "SELECTABLE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->SELECTABLE:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    const-string v1, "FIX"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->FIX:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    sget-object v1, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->SELECTABLE:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->FIX:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->$VALUES:[Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->$VALUES:[Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    return-object v0
.end method
