.class public Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
.super Ljava/lang/Object;
.source "CameraSurfaceHolder.java"


# instance fields
.field private final mHeight:I

.field private final mSurface:Landroid/view/SurfaceHolder;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->mSurface:Landroid/view/SurfaceHolder;

    .line 21
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->mWidth:I

    .line 22
    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->mHeight:I

    .line 23
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->mHeight:I

    return v0
.end method

.method public getSurface()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->mSurface:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->mWidth:I

    return v0
.end method
