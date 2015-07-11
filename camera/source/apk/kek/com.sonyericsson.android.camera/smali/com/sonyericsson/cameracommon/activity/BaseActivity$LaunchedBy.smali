.class public final enum Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchedBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 152
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "INTENT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 153
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    const-class v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method
