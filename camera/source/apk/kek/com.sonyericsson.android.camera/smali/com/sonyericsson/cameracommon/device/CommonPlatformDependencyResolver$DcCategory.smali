.class public final enum Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;
.super Ljava/lang/Enum;
.source "CommonPlatformDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DcCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

.field public static final enum COMPOSE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

.field public static final enum MAKE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

.field public static final enum NORMAL:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

.field public static final enum THIRD_PARTY:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;


# instance fields
.field final mDcForPicture:Ljava/lang/String;

.field final mDcForPreview:Ljava/lang/String;

.field final mDcForVideo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    const-string v1, "NORMAL"

    const-string v3, "balance"

    const-string v4, "auto"

    const-string v5, "balance"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->NORMAL:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    .line 67
    new-instance v3, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    const-string v4, "MAKE_IMAGE_FROM_PREVIEW"

    const-string v6, "balance"

    const-string v7, "auto"

    const-string v8, "balance"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->MAKE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    .line 76
    new-instance v3, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    const-string v4, "COMPOSE_IMAGE_FROM_PREVIEW"

    const-string v6, "landscape"

    const-string v7, "auto"

    const-string v8, "balance"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->COMPOSE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    .line 84
    new-instance v3, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    const-string v4, "THIRD_PARTY"

    const-string v6, "landscape"

    const-string v7, "landscape"

    const-string v8, "landscape"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->THIRD_PARTY:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    sget-object v1, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->NORMAL:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->MAKE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->COMPOSE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->THIRD_PARTY:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->$VALUES:[Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "modeForPreview"    # Ljava/lang/String;
    .param p4, "modeForPicture"    # Ljava/lang/String;
    .param p5, "modeForVideo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->mDcForPreview:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->mDcForPicture:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->mDcForVideo:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->$VALUES:[Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    return-object v0
.end method


# virtual methods
.method public writeTo(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 102
    const-string v0, "sony-dc-mode-for-preview"

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->mDcForPreview:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->setDcModeIfSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->access$000(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "sony-dc-mode-for-picture"

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->mDcForPicture:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->setDcModeIfSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->access$000(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "sony-dc-mode-for-video"

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->mDcForVideo:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->setDcModeIfSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->access$000(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
