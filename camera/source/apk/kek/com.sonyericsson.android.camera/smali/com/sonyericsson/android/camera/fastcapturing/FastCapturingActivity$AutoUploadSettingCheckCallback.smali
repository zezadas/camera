.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$AutoUploadSettingCheckCallback;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoUploadSettingCheckCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$AutoUploadSettingCheckCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoUploadSettingNotified(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageClassName"    # Ljava/lang/String;
    .param p3, "autoUploadSetting"    # Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    .prologue
    .line 1660
    sget-object v0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;->UNKNOWN:Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings$AutoUploadSetting;

    if-ne p3, v0, :cond_0

    .line 1664
    :cond_0
    return-void
.end method
