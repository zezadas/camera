.class public Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
.super Landroid/graphics/PointF;
.source "SplitLayoutHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vertex"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;)V
    .locals 2
    .param p1, "vertex"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    .prologue
    .line 47
    iget v0, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    iget v1, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 48
    return-void
.end method
