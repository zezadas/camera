.class Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;
.super Ljava/lang/Object;
.source "EGLController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/EGLController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EGLResources"
.end annotation


# instance fields
.field public eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field public eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 32
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 33
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 34
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 35
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/EGLController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/EGLController$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 48
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 49
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 50
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 51
    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 52
    return-void
.end method
