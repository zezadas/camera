.class public final enum Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field public static final enum Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field public static final enum Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field public static final enum ReverseLandscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field public static final enum ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field public static final enum Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 72
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    const-string v1, "ReversePortrait"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    const-string v1, "ReverseLandscape"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    return-object v0
.end method
