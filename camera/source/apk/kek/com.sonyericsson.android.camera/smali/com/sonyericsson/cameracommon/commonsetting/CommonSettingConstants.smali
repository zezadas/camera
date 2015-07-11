.class public Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;
.super Ljava/lang/Object;
.source "CommonSettingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$DoNotShowAgainCheckForGeotagDialogValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TouchBlockValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TermOfUseValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$VolumeKeyValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$BalloonTipsCounterValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TouchCaptureValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$ShutterSoundValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$StorageValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$GeoTagValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$FastCaptureValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$AutoUploadValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$CommonSettingColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.cameracommon.provider"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

.field private static final COMMONSETTING_TABLE:Ljava/lang/String; = "commonsettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "content://com.sonymobile.cameracommon.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->BASE_URI:Landroid/net/Uri;

    .line 27
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->BASE_URI:Landroid/net/Uri;

    const-string v1, "commonsettings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method
