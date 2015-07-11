.class public final enum Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
.super Ljava/lang/Enum;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cancelable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field public static final enum False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field public static final enum True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field public static final enum UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    const-string v1, "True"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 275
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    const-string v1, "False"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 276
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    const-string v1, "UseDefault"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 273
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->$VALUES:[Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

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
    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    const-class v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->$VALUES:[Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    return-object v0
.end method
