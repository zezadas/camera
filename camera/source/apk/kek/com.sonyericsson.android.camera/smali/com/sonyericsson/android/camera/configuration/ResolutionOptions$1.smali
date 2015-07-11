.class final Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$1;
.super Landroid/util/SparseArray;
.source "ResolutionOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 54
    const/16 v0, 0x870

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$1;->put(ILjava/lang/Object;)V

    .line 56
    const/16 v0, 0x438

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$1;->put(ILjava/lang/Object;)V

    .line 58
    const/16 v0, 0x2d0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$1;->put(ILjava/lang/Object;)V

    .line 60
    return-void
.end method
