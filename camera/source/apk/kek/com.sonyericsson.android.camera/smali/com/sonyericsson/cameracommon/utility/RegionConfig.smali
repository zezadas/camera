.class public Lcom/sonyericsson/cameracommon/utility/RegionConfig;
.super Ljava/lang/Object;
.source "RegionConfig.java"


# static fields
.field private static final CHINA_REGION_PACKAGE:Ljava/lang/String; = "com.sonymobile.cta"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChinaRegion(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string v0, "com.sonymobile.cta"

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
