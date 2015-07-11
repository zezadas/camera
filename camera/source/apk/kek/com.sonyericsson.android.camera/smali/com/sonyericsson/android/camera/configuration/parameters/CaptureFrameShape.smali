.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
.super Ljava/lang/Enum;
.source "CaptureFrameShape.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

.field public static final enum STANDARD:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

.field public static final enum WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

.field private static final sParameterTextId:I = 0x7f090148


# instance fields
.field private final mAspectRatio_x100:I

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    const-string v1, "WIDE"

    const v4, 0x7f0901e4

    const/16 v5, 0xb1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 23
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    const-string v5, "STANDARD"

    const v8, 0x7f0901e5

    const/16 v9, 0x85

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->STANDARD:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->STANDARD:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "aspectRatio_x100"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->mIconId:I

    .line 50
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->mTextId:I

    .line 51
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->mAspectRatio_x100:I

    .line 52
    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 128
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .locals 1
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 121
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 61
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)V

    .line 62
    return-void
.end method

.method public getAspectRatio_x100()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->mAspectRatio_x100:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f090148

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 147
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getResolution(I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getResolutionFromFrameShape(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
