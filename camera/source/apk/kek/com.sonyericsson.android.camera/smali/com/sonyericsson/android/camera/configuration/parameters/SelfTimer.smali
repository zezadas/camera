.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
.super Ljava/lang/Enum;
.source "SelfTimer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
.implements Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
        "Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field private static final sParameterTextId:I = 0x7f09003f


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mMilliSeconds:I

.field private final mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v13, 0x0

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v1, "LONG"

    const v3, 0x7f0200a7

    const v4, 0x7f090041

    const/16 v6, 0x2710

    sget-object v7, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIZILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 22
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v4, "SHORT"

    const v6, 0x7f0200a8

    const v7, 0x7f090040

    const/16 v9, 0x7d0

    sget-object v10, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_2SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    move v8, v5

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIZILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 28
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v7, "INSTANT"

    const v9, 0x7f0200a6

    const v10, 0x7f0901b0

    const/16 v12, 0x1f4

    move v8, v14

    move v11, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIZILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 34
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v7, "OFF"

    const v9, 0x7f0200a9

    const v10, 0x7f090030

    move v8, v15

    move v11, v2

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIZILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    aput-object v1, v0, v15

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Z
    .param p6, "milliseconds"    # I
    .param p7, "soundType"    # Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZI",
            "Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mIconId:I

    .line 70
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mTextId:I

    .line 71
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mBooleanValue:Z

    .line 72
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    .line 73
    iput-object p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 74
    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 83
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 84
    return-void
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDurationInMillisecond()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

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
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
