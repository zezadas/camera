.class public Lcom/sonyericsson/cameracommon/intent/IntentConstants;
.super Ljava/lang/Object;
.source "IntentConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/intent/IntentConstants$BroadcastIntent;
    }
.end annotation


# static fields
.field public static final ACTION_FRONT_STILL_IMAGE_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

.field public static final ACTION_FRONT_VIDEO_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

.field public static final CAMERA_UI_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final CAMERA_UI_ONE_SHOT_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "calling-activity"

.field public static final EXTRA_CALLING_MODE:Ljava/lang/String; = "calling-mode"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling-package"

.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

.field public static final EXTRA_LAUNCHED_BY_ANOTHER_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

.field public static final EXTRA_LAUNCHED_BY_FAST_CAPTURING:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

.field public static final EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_OPEN:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonyericsson.android.camera"

    const-string v2, "com.sonyericsson.android.camera.CameraActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/intent/IntentConstants;->CAMERA_UI_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 110
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonyericsson.android.camera"

    const-string v2, "com.sonyericsson.android.camera.CameraActivityForCaptureOnlyPhoto"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/intent/IntentConstants;->CAMERA_UI_ONE_SHOT_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
