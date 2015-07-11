.class public interface abstract Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor;
.super Ljava/lang/Object;
.source "GLRendererAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;
    }
.end annotation


# virtual methods
.method public abstract getGLTextureViewBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getGLTextureViewBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract requestFrame(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;)V
.end method

.method public abstract requestTakeGlTextureViewBitmap(Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setMirrored(Ljava/lang/String;Z)V
.end method

.method public abstract startVideoFrameRendering(Lcom/sonymobile/cameracommon/gltextureview/EGLController;II)V
.end method

.method public abstract stopVideoFrameRendering()V
.end method
