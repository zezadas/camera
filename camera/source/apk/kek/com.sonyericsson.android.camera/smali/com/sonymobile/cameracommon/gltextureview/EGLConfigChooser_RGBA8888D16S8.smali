.class public Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;
.super Ljava/lang/Object;
.source "EGLConfigChooser_RGBA8888D16S8.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8$1;
    }
.end annotation


# instance fields
.field private final mBitA:I

.field private final mBitB:I

.field private final mBitDepth:I

.field private final mBitG:I

.field private final mBitR:I

.field private final mBitStencil:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->mBitR:I

    .line 19
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->mBitG:I

    .line 20
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->mBitB:I

    .line 21
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->mBitA:I

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->mBitDepth:I

    .line 27
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->mBitStencil:I

    .line 32
    return-void
.end method

.method private static getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attr"    # I

    .prologue
    .line 139
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 140
    .local v0, "value":[I
    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 141
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method private getRequiredConfigSpec(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)[I
    .locals 6
    .param p1, "version"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .prologue
    const/16 v5, 0x8

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$OpenGLVersion:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    const/16 v3, 0x3024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/16 v3, 0x3023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/16 v3, 0x3022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/16 v3, 0x3021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const/16 v3, 0x3025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const/16 v3, 0x3026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/16 v3, 0x3038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 127
    .local v2, "resultArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "i":I
    .end local v2    # "resultArray":[I
    :pswitch_1
    const/16 v3, 0x3040

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 131
    .restart local v0    # "i":I
    .restart local v2    # "resultArray":[I
    :cond_0
    return-object v2

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "version"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .prologue
    .line 43
    const/4 v2, 0x1

    new-array v12, v2, [I

    .line 44
    .local v12, "configNum":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2, v3, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to eglChooseConfig()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    const/4 v2, 0x0

    aget v2, v12, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 52
    .local v5, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getRequiredConfigSpec(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)[I

    move-result-object v4

    array-length v6, v5

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to eglChooseConfig()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_1
    move-object v9, v5

    .local v9, "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v11, v9, v15

    .line 59
    .local v11, "check":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v2, 0x3024

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v17

    .line 60
    .local v17, "r":I
    const/16 v2, 0x3023

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v14

    .line 61
    .local v14, "g":I
    const/16 v2, 0x3022

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v10

    .line 62
    .local v10, "b":I
    const/16 v2, 0x3021

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    .line 63
    .local v8, "a":I
    const/16 v2, 0x3025

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v13

    .line 64
    .local v13, "d":I
    const/16 v2, 0x3026

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v18

    .line 67
    .local v18, "s":I
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v14, v2, :cond_2

    const/16 v2, 0x8

    if-ne v10, v2, :cond_2

    const/16 v2, 0x8

    if-gt v2, v8, :cond_2

    const/16 v2, 0x10

    if-gt v2, v13, :cond_2

    const/16 v2, 0x8

    move/from16 v0, v18

    if-gt v2, v0, :cond_2

    .line 80
    .end local v8    # "a":I
    .end local v10    # "b":I
    .end local v11    # "check":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v13    # "d":I
    .end local v14    # "g":I
    .end local v17    # "r":I
    .end local v18    # "s":I
    :goto_1
    return-object v11

    .line 58
    .restart local v8    # "a":I
    .restart local v10    # "b":I
    .restart local v11    # "check":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v13    # "d":I
    .restart local v14    # "g":I
    .restart local v17    # "r":I
    .restart local v18    # "s":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 80
    .end local v8    # "a":I
    .end local v10    # "b":I
    .end local v11    # "check":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v13    # "d":I
    .end local v14    # "g":I
    .end local v17    # "r":I
    .end local v18    # "s":I
    :cond_3
    const/4 v2, 0x0

    aget-object v11, v5, v2

    goto :goto_1
.end method
