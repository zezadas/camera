.class Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;
.super Ljava/lang/Object;
.source "NotifySurfaceStateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;,
        Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

.field private final mHeight:I

.field private final mType:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;IILcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "callback"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mType:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    .line 39
    iput p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mWidth:I

    .line 40
    iput p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mHeight:I

    .line 41
    iput-object p4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;->$SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mType:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceCreated()V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mWidth:I

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;->mCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceDestroyed()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
