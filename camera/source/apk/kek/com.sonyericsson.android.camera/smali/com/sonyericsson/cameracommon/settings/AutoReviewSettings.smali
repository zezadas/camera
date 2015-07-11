.class public Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;
.super Ljava/lang/Object;
.source "AutoReviewSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;",
            "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;->mSettings:Ljava/util/HashMap;

    .line 30
    return-void
.end method


# virtual methods
.method public get(Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;)Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    .line 40
    .local v0, "value":Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1, p1}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->getDefaultValue(Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;)Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    move-result-object v0

    .line 43
    .end local v0    # "value":Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    :cond_0
    return-object v0
.end method

.method public set(Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    .prologue
    .line 55
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;->getAutoReviewSettingKey()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    move-result-object v0

    .line 56
    .local v0, "key":Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
