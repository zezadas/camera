.class final enum Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
.super Ljava/lang/Enum;
.source "KeyEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "NON"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "CAMERA_KEY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "VOLUME_UP_KEY"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "VOLUME_DOWN_KEY"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->$VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->$VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-object v0
.end method
