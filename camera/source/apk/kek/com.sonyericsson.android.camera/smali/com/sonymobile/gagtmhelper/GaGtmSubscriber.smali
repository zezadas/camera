.class public Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
.super Landroid/database/ContentObserver;
.source "GaGtmSubscriber.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscribing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "somc.google_analytics_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 100
    const-string v0, "GaGtmHelper"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public subscribeGaSettingChanges()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "GaGtmHelper"

    const-string v1, "subscribeGaSettingChanges"

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 78
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 82
    :cond_0
    return-void
.end method

.method public unsubscribeGaSettingChanges()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "GaGtmHelper"

    const-string v1, "unsubscribeGaSettingChanges"

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 96
    :cond_0
    return-void
.end method
