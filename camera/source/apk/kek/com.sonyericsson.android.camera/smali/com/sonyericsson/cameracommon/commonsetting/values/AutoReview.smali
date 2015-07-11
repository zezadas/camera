.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
.super Ljava/lang/Enum;
.source "AutoReview.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum LONG:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum SHORT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field private static final sParameterTextId:I


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
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v1, "UNLIMITED"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_unlimited_txt:I

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 24
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v5, "LONG"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_5sec_txt:I

    const/16 v9, 0x1388

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->LONG:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 28
    new-instance v7, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v8, "SHORT"

    sget v11, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_3sec_txt:I

    const/16 v12, 0xbb8

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->SHORT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 32
    new-instance v7, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v8, "EDIT"

    sget v11, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_edit_txt:I

    move v9, v14

    move v10, v3

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 36
    new-instance v7, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v8, "OFF"

    const/4 v9, 0x4

    sget v11, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    move v10, v3

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->LONG:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->SHORT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 43
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->sParameterTextId:I

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
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mIconId:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mTextId:I

    .line 63
    iput p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mDuration:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    return-object v0
.end method


# virtual methods
.method public getAutoReviewSettingKey()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mDuration:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mTextId:I

    return v0
.end method
