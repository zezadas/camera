.class public Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;
.super Ljava/lang/Object;
.source "FaceIdentificationUtil.java"


# static fields
.field private static final FACE_IDENTIFICATION_SUPPORTED_API_VERSION:Ljava/lang/String; = "com.sonyericsson.privateapis_11"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exist(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->isFaceIdentificationSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 50
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sonymobile.photoanalyzer.intent.action.REQUEST_PHOTO_ANALYSIS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isFaceIdentificationSupported(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 72
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "libraryNames":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 76
    aget-object v1, v2, v0

    .line 77
    .local v1, "libralyName":Ljava/lang/String;
    const-string v5, "com.sonyericsson.privateapis_11"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    const/4 v4, 0x1

    .line 86
    .end local v0    # "i":I
    .end local v1    # "libralyName":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 87
    sget-object v5, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->TAG:Ljava/lang/String;

    const-string v6, "Face identification is not supported."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    return v4

    .line 75
    .restart local v0    # "i":I
    .restart local v1    # "libralyName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v1    # "libralyName":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static notifyCameraLaunch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.photoanalyzer.intent.action.REQUEST_PHOTO_ANALYSIS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void
.end method
