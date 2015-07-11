.class final enum Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;
.super Ljava/lang/Enum;
.source "NotifySurfaceStateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NotifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

.field public static final enum CHANGED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

.field public static final enum CREATED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

.field public static final enum DESTROYED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CREATED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    const-string v1, "CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CHANGED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->DESTROYED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CREATED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CHANGED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->DESTROYED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->$VALUES:[Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->$VALUES:[Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    return-object v0
.end method
