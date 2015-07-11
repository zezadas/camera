.class public Lcom/sonyericsson/android/camera/configuration/CustomizationReader;
.super Ljava/lang/Object;
.source "CustomizationReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sIsMmsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->sIsMmsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static isMmsSupported()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->sIsMmsSupported:Z

    return v0
.end method

.method public static isMmsSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->readCustomization(Landroid/content/Context;)V

    .line 49
    sget-boolean v0, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->sIsMmsSupported:Z

    return v0
.end method

.method static readCustomization(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->sIsMmsSupported:Z

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->sIsMmsSupported:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->TAG:Ljava/lang/String;

    const-string v2, "readCustomization failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
