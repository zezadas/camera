.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
.super Ljava/lang/Enum;
.source "BalloonTipsCounter.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum COUNT_START:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum COUNT_STOP:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum DISPLAY_OK:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum DISPLAY_OK_SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field public static final enum SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field private static sParameterTextId:I


# instance fields
.field private final mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

.field private mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 17
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "COUNT_START"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "count_start"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_START:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "FIRST"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "first"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "SECOND"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "second"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "DISPLAY_OK_FIRST"

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "display_ok_first"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "DISPLAY_OK_SECOND"

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "display_ok_second"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 40
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "DISPLAY_OK"

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "display_ok"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const-string v1, "COUNT_STOP"

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "count_stop"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_STOP:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_START:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_STOP:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;Ljava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "compatibleValue"    # Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    .param p6, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mIconId:I

    .line 79
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mTextId:I

    .line 80
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 81
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mProviderValue:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mTextId:I

    return v0
.end method

.method public isCompatibleValue()Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    return-object v0
.end method
