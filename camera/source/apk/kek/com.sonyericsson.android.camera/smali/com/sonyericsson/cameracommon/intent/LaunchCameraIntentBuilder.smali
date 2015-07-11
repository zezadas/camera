.class public Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
.super Ljava/lang/Object;
.source "LaunchCameraIntentBuilder.java"


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mCallingActivityName:Ljava/lang/String;

.field private mCallingModeName:Ljava/lang/String;

.field private mCallingPackageName:Ljava/lang/String;

.field private mModeName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mModeName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mPackageName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mActivityName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingModeName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingPackageName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingActivityName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mPackageName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mActivityName:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public callingActivityName(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingActivityName:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public callingModeName(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingModeName:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public callingPackageName(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingPackageName:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public comit()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mActivityName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This builder objject is specified enough arguments."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mModeName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 70
    const-string v1, "calling-mode"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mModeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingModeName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingActivityName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 76
    const-string v1, "calling-mode"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingModeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "calling-package"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "calling-activity"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mCallingActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_3
    return-object v0
.end method

.method public modeName(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/intent/LaunchCameraIntentBuilder;->mModeName:Ljava/lang/String;

    .line 38
    return-object p0
.end method
