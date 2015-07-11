.class public final enum Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;
.super Ljava/lang/Enum;
.source "FrameStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameStructVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

.field public static final enum COMMON:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

.field public static final enum COMMON_OVERLAY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

.field public static final enum PREVIEW_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

.field public static final enum VIDEO_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .line 39
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    const-string v1, "PREVIEW_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->PREVIEW_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .line 44
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    const-string v1, "VIDEO_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->VIDEO_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .line 49
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    const-string v1, "COMMON_OVERLAY"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON_OVERLAY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->PREVIEW_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->VIDEO_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON_OVERLAY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->$VALUES:[Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->$VALUES:[Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    return-object v0
.end method
