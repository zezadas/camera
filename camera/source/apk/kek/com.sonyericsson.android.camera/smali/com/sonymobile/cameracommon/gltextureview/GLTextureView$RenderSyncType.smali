.class final enum Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;
.super Ljava/lang/Enum;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RenderSyncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

.field public static final enum IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

.field public static final enum ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    const-string v1, "IN_SYNC"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 174
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    const-string v1, "ON_BACK"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->$VALUES:[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

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
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->$VALUES:[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    return-object v0
.end method
