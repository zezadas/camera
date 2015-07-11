.class public Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentUtil;
.super Ljava/lang/Object;
.source "LaunchCameraIntentUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildIntent()Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;-><init>()V

    return-object v0
.end method

.method public static overwriteCallingMode(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "calling-mode"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-void
.end method
