.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
.super Ljava/lang/Enum;
.source "VideoAutoReview.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

.field public static final enum EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

.field private static final sParameterTextId:I = 0x7f0900f0


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    const-string v1, "ON"

    const v2, 0x7f09002f

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    const-string v1, "EDIT"

    const v2, 0x7f090100

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    const-string v1, "OFF"

    const v2, 0x7f090030

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->mIconId:I

    .line 48
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->mTextId:I

    .line 49
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;)V

    .line 54
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f0900f0

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
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
    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
