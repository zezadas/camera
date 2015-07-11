.class public Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
.super Ljava/lang/Object;
.source "ParamSharedPrefWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_KEY:Ljava/lang/String; = "SHARED_PREFERNCE_VERSION"


# instance fields
.field private final mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

.field private final mSharedPreferenceName:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-direct {v2, p1, p2, p3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mSharedPreferenceName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    .line 57
    const-string v2, "SHARED_PREFERNCE_VERSION"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "sharedVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    .local v0, "isAvailabeVersion":Z
    if-nez v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->clear()V

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    const-string v3, "SHARED_PREFERNCE_VERSION"

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public checkFirmwareVersionUpdated()V
    .locals 4

    .prologue
    .line 182
    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "cachedVersion":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 184
    .local v1, "currentVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->clear()V

    .line 188
    const-string v2, "android.os.Build.FINGERPRINT"

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->clear()V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    const-string v1, "SHARED_PREFERNCE_VERSION"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSharedPreferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mSharedPreferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setParamToSP(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;F)V

    .line 135
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method
