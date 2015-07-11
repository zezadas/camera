.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
.super Ljava/lang/Enum;
.source "TermOfUse.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

.field public static final enum NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 16
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mIconId:I

    .line 29
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mTextId:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mIconId:I

    return v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mTextId:I

    return v0
.end method
