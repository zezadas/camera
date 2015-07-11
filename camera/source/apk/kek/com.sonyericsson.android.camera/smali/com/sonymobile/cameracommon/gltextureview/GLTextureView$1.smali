.class synthetic Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->values()[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
