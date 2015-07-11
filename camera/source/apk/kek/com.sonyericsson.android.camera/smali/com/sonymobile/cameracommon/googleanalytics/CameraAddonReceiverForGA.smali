.class public Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;
.super Landroid/content/BroadcastReceiver;
.source "CameraAddonReceiverForGA.java"


# static fields
.field public static final ACTION_ADD_BUTTON_PRESSED:Ljava/lang/String; = "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED"

.field public static final ACTION_APP_SELECTED:Ljava/lang/String; = "com.sonymobile.camera.addon.action.APP_SELECTED"

.field private static final NEXT_MODE_NAME:Ljava/lang/String; = "next_mode_name"

.field private static final NEXT_PACKAGE_NAME:Ljava/lang/String; = "next_package_name"

.field public static final PERMISSION_CAMERA_ADDON_NOTIFY_GA:Ljava/lang/String; = "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendGoogleAnalyticsAddonEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addonFW"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v4, "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;->ADD_BUTTON_PRESSED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;->sendGoogleAnalyticsAddonEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string v4, "com.sonymobile.camera.addon.action.APP_SELECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const-string v4, "next_package_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "next_mode_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "modeName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "packageAndModeName":Ljava/lang/String;
    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;->APP_SELECTED_ON_MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;

    invoke-direct {p0, p1, v4, v2}, Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;->sendGoogleAnalyticsAddonEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$AddonFW;Ljava/lang/String;)V

    goto :goto_0
.end method
