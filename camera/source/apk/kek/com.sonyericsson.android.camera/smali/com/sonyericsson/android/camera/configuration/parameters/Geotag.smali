.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
.super Ljava/lang/Enum;
.source "Geotag.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

.field private static final sParameterTextId:I = 0x7f090066


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const-string v1, "ON"

    const v4, 0x7f09002f

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 19
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const-string v7, "OFF"

    const v10, 0x7f090030

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mIconId:I

    .line 46
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mTextId:I

    .line 47
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mBooleanValue:Z

    .line 48
    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 57
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 58
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f090066

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
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
    .line 128
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGeotagOn()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mBooleanValue:Z

    return v0
.end method
