.class public Lcom/sonyericsson/cameracommon/utility/RotationUtil;
.super Ljava/lang/Object;
.source "RotationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/utility/RotationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAngle(I)F
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 24
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 25
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNormalizedRotation(I)I
    .locals 4
    .param p0, "degrees"    # I

    .prologue
    const/16 v3, 0xe1

    const/16 v2, 0x87

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "normalizedOrientation":I
    rem-int/lit16 p0, p0, 0x168

    .line 44
    const/16 v1, 0x2d

    if-ge v1, p0, :cond_0

    if-gt p0, v2, :cond_0

    .line 45
    const/16 v0, 0x5a

    .line 56
    :goto_0
    return v0

    .line 46
    :cond_0
    if-gt v2, p0, :cond_1

    if-gt p0, v3, :cond_1

    .line 47
    const/16 v0, 0xb4

    goto :goto_0

    .line 48
    :cond_1
    if-gt v3, p0, :cond_2

    const/16 v1, 0x13b

    if-gt p0, v1, :cond_2

    .line 49
    const/16 v0, 0x10e

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
