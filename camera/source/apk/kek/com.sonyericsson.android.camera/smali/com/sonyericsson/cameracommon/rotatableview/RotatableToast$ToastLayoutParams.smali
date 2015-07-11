.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
.super Ljava/lang/Object;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastLayoutParams"
.end annotation


# instance fields
.field public final bottomContainer:Landroid/graphics/Rect;

.field public final topContainer:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "topContainer"    # Landroid/graphics/Rect;
    .param p4, "bottomContainer"    # Landroid/graphics/Rect;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 54
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 56
    return-void
.end method
