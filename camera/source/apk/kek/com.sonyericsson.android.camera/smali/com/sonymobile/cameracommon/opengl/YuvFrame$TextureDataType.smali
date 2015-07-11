.class public final enum Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;
.super Ljava/lang/Enum;
.source "YuvFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TextureDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

.field public static final enum LUMINANCE:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

.field public static final enum LUMINANCE_ALPHA:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;


# instance fields
.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    const-string v1, "LUMINANCE"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->LUMINANCE:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    .line 338
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    const-string v1, "LUMINANCE_ALPHA"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->LUMINANCE_ALPHA:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    .line 336
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->LUMINANCE:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->LUMINANCE_ALPHA:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->$VALUES:[Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 341
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->type:I

    .line 342
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    const-class v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->$VALUES:[Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    return-object v0
.end method
