.class public final enum Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;
.super Ljava/lang/Enum;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenGLVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

.field public static final enum OPEN_GL_ES_11:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

.field public static final enum OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    const-string v1, "OPEN_GL_ES_11"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_11:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 147
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    const-string v1, "OPEN_GL_ES_20"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_11:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->$VALUES:[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const-class v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->$VALUES:[Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    return-object v0
.end method
