.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;
.super Ljava/lang/Enum;
.source "TouchBlock.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

.field private static final sParameterTextId:I = -0x1


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->mIconId:I

    .line 44
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->mTextId:I

    .line 45
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    return-object v0
.end method

.method public static getOptions(Landroid/content/Context;)[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v0, "com.sonymobile.touchblocker"

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 54
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;)V

    .line 55
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
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
    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
