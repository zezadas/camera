.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewerLaunched"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

.field public static final enum LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

.field public static final enum NOT_LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    const-string v1, "NOT_LAUNCHED"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    .line 352
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    const-string v1, "LAUNCHED"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    .line 350
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 358
    iput p3, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->mValue:I

    .line 359
    return-void
.end method

.method public static getType(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;
    .locals 1
    .param p0, "operation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .prologue
    .line 362
    if-nez p0, :cond_0

    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 350
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ViewerLaunched;

    return-object v0
.end method
