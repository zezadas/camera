.class public abstract Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.super Ljava/lang/Object;
.source "CameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonyericsson/cameracommon/status/CameraStatusValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_STATUS_UPDATE:Ljava/lang/String; = "com.sonymobile.cameracommon.action.CAMERA_STATUS_UPDATE"

.field private static final EXTRA_CAMERA_STATUS:Ljava/lang/String; = "CAMERA_STATUS"

.field private static final PACKAGE:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field private static final TAG:Ljava/lang/String;

.field private static volatile sCameraCommonVersion:I


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;, "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    .line 54
    sget v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->getCameraCommonVersion(Landroid/content/pm/PackageManager;)I

    move-result v0

    sput v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static getCameraCommonVersion(Landroid/content/pm/PackageManager;)I
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 115
    :try_start_0
    const-string v3, "com.sonymobile.cameracommon"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 116
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 117
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->TAG:Ljava/lang/String;

    const-string v4, "com.sonymobile.cameracommon package doesn\'t exist."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static publish(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.cameracommon.action.CAMERA_STATUS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.cameracommon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "CAMERA_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getCameraCommonVersion()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;, "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<TT;>;"
    sget v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->sCameraCommonVersion:I

    return v0
.end method

.method protected keyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;, "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method public publish()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;, "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 87
    return-void
.end method

.method public put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;, "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<TT;>;"
    .local p1, "value":Lcom/sonyericsson/cameracommon/status/CameraStatusValue;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->getCameraCommonVersion()I

    move-result v0

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->minRequiredVersion()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->keyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->putInto(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object p0
.end method

.method public abstract putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
            "<TT;>;"
        }
    .end annotation
.end method
