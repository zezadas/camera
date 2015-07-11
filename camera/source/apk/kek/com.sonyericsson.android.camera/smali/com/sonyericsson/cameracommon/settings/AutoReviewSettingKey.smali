.class public final enum Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
.super Ljava/lang/Enum;
.source "AutoReviewSettingKey.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/SettingKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/SettingKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

.field public static final enum VIDEO_AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;


# instance fields
.field private final mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

.field private mTitleTextId:I

.field private mValues:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    const-string v1, "AUTO_REVIEW"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_title_txt:I

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;-><init>(Ljava/lang/String;IILcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    .line 25
    new-instance v3, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    const-string v4, "VIDEO_AUTO_REVIEW"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_title_txt:I

    sget-object v7, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    move-result-object v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;-><init>(Ljava/lang/String;IILcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;)V
    .locals 0
    .param p3, "titleTextId"    # I
    .param p4, "defaultValue"    # Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .param p5, "values"    # [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
            "[",
            "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mTitleTextId:I

    .line 51
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    .line 52
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    return-object v0
.end method

.method public getDefaultValue(Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;)Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .locals 1
    .param p1, "settingKey"    # Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mTitleTextId:I

    return v0
.end method

.method public getValues()[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    return-object v0
.end method
