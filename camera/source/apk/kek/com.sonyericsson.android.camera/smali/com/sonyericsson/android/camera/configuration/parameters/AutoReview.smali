.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
.super Ljava/lang/Enum;
.source "AutoReview.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum LONG:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum UNLIMITED:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field private static final sParameterTextId:I = 0x7f0900f0


# instance fields
.field private final mDuration:I

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v1, "UNLIMITED"

    const v4, 0x7f0900f4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->UNLIMITED:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 24
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v5, "LONG"

    const v8, 0x7f0900f3

    const/16 v9, 0x1388

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 28
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v8, "SHORT"

    const v11, 0x7f0900f2

    const/16 v12, 0xbb8

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 32
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v8, "EDIT"

    const v11, 0x7f090100

    move v9, v14

    move v10, v3

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 36
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v8, "OFF"

    const/4 v9, 0x4

    const v11, 0x7f090030

    move v10, v3

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->UNLIMITED:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mIconId:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mTextId:I

    .line 63
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mDuration:I

    .line 64
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 68
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 69
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mDuration:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0900f0

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
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
    .line 118
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
