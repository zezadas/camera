.class public Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;
.super Ljava/lang/Object;
.source "ResolutionDependence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDependOnAspect(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "independentOfAspect":Z
    instance-of v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 33
    :goto_0
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
