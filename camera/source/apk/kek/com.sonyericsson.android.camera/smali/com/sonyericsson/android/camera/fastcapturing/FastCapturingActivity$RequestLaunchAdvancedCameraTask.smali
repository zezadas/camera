.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestLaunchAdvancedCameraTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestLaunchAdvancedCameraTask"


# instance fields
.field private final mCurrentMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p2, "currentMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->mCurrentMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1568
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1573
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->abort(Z)V

    .line 1576
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1578
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1580
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1581
    const-string v2, "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1582
    const-string v2, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1585
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->mCurrentMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1586
    const-string v2, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 1594
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 1596
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->startActivity(Landroid/content/Intent;)V

    .line 1599
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestSuspend()V

    .line 1609
    return-void

    .line 1588
    .end local v1    # "isActivityAvailable":Z
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1601
    .restart local v1    # "isActivityAvailable":Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method
