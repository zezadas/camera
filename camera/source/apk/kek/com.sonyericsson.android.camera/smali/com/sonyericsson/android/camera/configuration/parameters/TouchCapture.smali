.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
.super Ljava/lang/Enum;
.source "TouchCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field public static final enum VIEW_FINDER:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field private static final sParameterTextId:I = 0x7f0900f6


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mNotificationId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const-string v1, "VIEW_FINDER"

    const v4, 0x7f09002f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->VIEW_FINDER:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .line 23
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const-string v5, "OFF"

    const v8, 0x7f090030

    move v7, v3

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->VIEW_FINDER:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "notificationId"    # I
    .param p6, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mIconId:I

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mTextId:I

    .line 56
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mNotificationId:I

    .line 57
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mBooleanValue:Z

    .line 58
    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 67
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    .line 68
    return-void
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mIconId:I

    return v0
.end method

.method public getNotificationIconId()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mNotificationId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f0900f6

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
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
    .line 148
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
