.class public final enum Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;
.super Ljava/lang/Enum;
.source "NfcMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

.field public static final enum DI:Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;


# instance fields
.field private final mStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    const-string v1, "DI"

    const-string v2, "application/x-sony-pmm"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->DI:Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    sget-object v1, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->DI:Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->$VALUES:[Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "stringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->mStringId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->$VALUES:[Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;

    return-object v0
.end method


# virtual methods
.method public getStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcMimeType;->mStringId:Ljava/lang/String;

    return-object v0
.end method
