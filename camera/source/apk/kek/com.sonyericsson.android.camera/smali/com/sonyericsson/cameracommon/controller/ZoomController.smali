.class public Lcom/sonyericsson/cameracommon/controller/ZoomController;
.super Ljava/lang/Object;
.source "ZoomController.java"


# static fields
.field private static final PINCH_ZOOM_COEFFICIENT:F = 0.2f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZoomValue(FF)F
    .locals 2
    .param p0, "currentZoom"    # F
    .param p1, "scaleLength"    # F

    .prologue
    .line 13
    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, p1

    add-float v0, p0, v1

    .line 14
    .local v0, "zoomValue":F
    return v0
.end method
