.class public Lcom/sonymobile/cameracommon/remotedevice/util/Util$Uri;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uri"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 390
    const-string v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, "schemeRightIndex":I
    if-ne v1, v5, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object v2

    .line 395
    :cond_1
    const-string v3, "/"

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, "hostRightIndex":I
    if-eq v0, v5, :cond_0

    .line 400
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSchemeAndHostFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 369
    const-string v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, "schemeRightIndex":I
    if-ne v1, v5, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v2

    .line 374
    :cond_1
    const-string v3, "/"

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "hostRightIndex":I
    if-eq v0, v5, :cond_0

    .line 379
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
