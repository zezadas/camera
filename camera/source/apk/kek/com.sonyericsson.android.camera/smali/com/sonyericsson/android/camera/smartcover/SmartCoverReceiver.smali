.class public Lcom/sonyericsson/android/camera/smartcover/SmartCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartCoverReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverReceiver;->isOrderedBroadcast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverReceiver;->abortBroadcast()V

    .line 33
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "i":Landroid/content/Intent;
    const-class v2, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 37
    .local v1, "isActivityAvailable":Z
    if-nez v1, :cond_1

    .line 38
    sget-object v2, Lcom/sonyericsson/android/camera/smartcover/SmartCoverReceiver;->TAG:Ljava/lang/String;

    const-string v3, "SmartCoverActivity is disabled."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
