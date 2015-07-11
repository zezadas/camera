.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
.super Ljava/lang/Enum;
.source "Facing.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Facing;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field private static sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing; = null

.field private static final sParameterTextId:I = 0x7f0900ee


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v3, 0x7f020060

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const-string v1, "BACK"

    const v4, 0x7f09010c

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 22
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const-string v5, "FRONT"

    const v8, 0x7f09010d

    move v7, v3

    move v9, v6

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 17
    new-array v0, v10, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 87
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFrontCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-array v0, v10, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    new-array v0, v6, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mIconId:I

    .line 33
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mTextId:I

    .line 34
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mValue:I

    .line 35
    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 48
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Facing;)V

    .line 49
    return-void
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mValue:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0900ee

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
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
    .line 100
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method
