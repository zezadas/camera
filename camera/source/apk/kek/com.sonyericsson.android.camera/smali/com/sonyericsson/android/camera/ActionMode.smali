.class public Lcom/sonyericsson/android/camera/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# instance fields
.field public final mCameraId:I

.field public final mIsOneShot:Z

.field public final mType:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "isOneShot"    # Z
    .param p2, "type"    # I
    .param p3, "cameraId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    .line 37
    iput p2, p0, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    .line 38
    iput p3, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    .line 39
    return-void
.end method
