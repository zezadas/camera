.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;
.super Ljava/lang/Object;
.source "CommonSettingChanger.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;)V
    .locals 0
    .param p1, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p2, "onChangedListener"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 30
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    .line 31
    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 36
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;->onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 38
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendSettingsCommon(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 39
    return-void
.end method
