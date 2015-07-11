.class public final enum Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;
.super Ljava/lang/Enum;
.source "RecorderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

.field public static final enum FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

.field public static final enum MAX_DURATION_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

.field public static final enum MAX_FILESIZE_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

.field public static final enum SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    const-string v1, "MAX_DURATION_REACHED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->MAX_DURATION_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    const-string v1, "MAX_FILESIZE_REACHED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->MAX_FILESIZE_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->MAX_DURATION_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->MAX_FILESIZE_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->$VALUES:[Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->$VALUES:[Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    return-object v0
.end method
