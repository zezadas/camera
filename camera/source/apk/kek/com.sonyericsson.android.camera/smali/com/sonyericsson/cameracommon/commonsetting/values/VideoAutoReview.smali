.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;
.super Ljava/lang/Enum;
.source "VideoAutoReview.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

.field public static final enum EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

.field private static final sParameterTextId:I


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
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    const-string v1, "ON"

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    .line 23
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    const-string v1, "EDIT"

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_edit_txt:I

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    .line 26
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    const-string v1, "OFF"

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    .line 32
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->sParameterTextId:I

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
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->mIconId:I

    .line 48
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->mTextId:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;

    return-object v0
.end method


# virtual methods
.method public getAutoReviewSettingKey()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VideoAutoReview;->mTextId:I

    return v0
.end method
