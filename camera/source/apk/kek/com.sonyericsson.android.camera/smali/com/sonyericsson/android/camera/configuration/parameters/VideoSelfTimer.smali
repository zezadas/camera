.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;
.super Ljava/lang/Enum;
.source "VideoSelfTimer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

.field public static final enum INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

.field public static final enum LONG:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

.field public static final enum SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

.field private static final sParameterTextId:I = 0x7f09003f


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mMilliSeconds:I

.field private final mNotificationIconId:I

.field private final mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    const-string v1, "LONG"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const v3, 0x7f0200ec

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    const-string v1, "SHORT"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const v3, 0x7f0200ed

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    const-string v1, "INSTANT"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const v3, 0x7f0200eb

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    const-string v1, "OFF"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;I)V
    .locals 1
    .param p3, "selftimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .param p4, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mIconId:I

    .line 60
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getTextId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mTextId:I

    .line 61
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mNotificationIconId:I

    .line 62
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mBooleanValue:Z

    .line 63
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mMilliSeconds:I

    .line 64
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getSoundType()Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 65
    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 74
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    .line 75
    return-void
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mIconId:I

    return v0
.end method

.method public getNotificationIconId()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mNotificationIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f09003f

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
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
    .line 163
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getSoundType()Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mTextId:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->mMilliSeconds:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
