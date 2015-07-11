.class public abstract Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;
.super Ljava/lang/Object;
.source "SplitLayoutHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    }
.end annotation


# static fields
.field private static final EXPANSION_SIZE:F = 0.01f

.field public static final INVALID_INDEX:I = -0x1


# instance fields
.field private mControlPointDraggingLimitBottom:F

.field private mControlPointDraggingLimitLeft:F

.field private mControlPointDraggingLimitRight:F

.field private mControlPointDraggingLimitTop:F

.field private mControlPointTouchRange:F

.field private final mLayoutSize:Landroid/graphics/RectF;

.field private mLineTouchRange:F

.field private mRootNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

.field private final mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

.field private final mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "layoutSize"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    .line 125
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    .line 173
    iput v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointTouchRange:F

    .line 174
    iput v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLineTouchRange:F

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    .line 183
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->init()V

    .line 184
    return-void
.end method

.method private initCenterHorizontalVertexArray()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 220
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 221
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 222
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateCenterVertexWithLimit()V

    .line 223
    return-void
.end method

.method private limitVertex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v5, 0x1

    .line 756
    packed-switch p1, :pswitch_data_0

    .line 786
    :goto_0
    :pswitch_0
    return-void

    .line 758
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitLeft:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitRight:F

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->limit(FFF)F

    move-result v1

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 761
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    goto :goto_0

    .line 765
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 766
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitBottom:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitTop:F

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->limit(FFF)F

    move-result v1

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    goto :goto_0

    .line 772
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 773
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitBottom:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitTop:F

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->limit(FFF)F

    move-result v1

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    goto :goto_0

    .line 779
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitLeft:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitRight:F

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->limit(FFF)F

    move-result v1

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 782
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    goto/16 :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateCenterVertexWithLimit()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateCenterVertex([Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;Z)V

    .line 590
    return-void
.end method


# virtual methods
.method public addFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->initCenterHorizontalVertexArray()V

    .line 272
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->addFrame(Ljava/lang/String;)Z

    .line 273
    return-void
.end method

.method public copyVertexArray()[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    return-object v0
.end method

.method public deleteFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->deleteFrame(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 282
    return-void
.end method

.method protected getArea(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getArea()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    move-result-object v0

    return-object v0
.end method

.method public getAreaFrameId(FF)Ljava/lang/String;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    .local v1, "frameId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getArea()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    move-result-object v0

    .line 441
    .local v0, "area":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->inArea(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    .end local v0    # "area":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    .end local v1    # "frameId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAreaVertexArray(Ljava/lang/String;)[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .locals 7
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getArea()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    move-result-object v0

    .line 405
    .local v0, "area":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v3

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v4

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v5

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v6

    return-object v1
.end method

.method public getControlPointIndex(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getControlPointVertexIndexList()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 421
    .local v3, "index":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    sub-float v0, p1, v4

    .line 422
    .local v0, "dx":F
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    sub-float v1, p2, v4

    .line 423
    .local v1, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointTouchRange:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointTouchRange:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 425
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 428
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v3    # "index":Ljava/lang/Integer;
    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getControlPointVertexIndexList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getControlPointVertexIndexSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFrameIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameIdList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutSize()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getMovableSegmentList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getMovableSegmentSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getRelatedSegment(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 734
    packed-switch p1, :pswitch_data_0

    .line 751
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 736
    :pswitch_1
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;-><init>(II)V

    goto :goto_0

    .line 739
    :pswitch_2
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;-><init>(II)V

    goto :goto_0

    .line 742
    :pswitch_3
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;-><init>(II)V

    goto :goto_0

    .line 745
    :pswitch_4
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    invoke-direct {v0, v2, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;-><init>(II)V

    goto :goto_0

    .line 748
    :pswitch_5
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    invoke-direct {v0, v3, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;-><init>(II)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getRootAreaVertexArray()[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getArea()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    move-result-object v0

    .line 389
    .local v0, "rootArea":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v3

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v4

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v5

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    aput-object v2, v1, v6

    return-object v1
.end method

.method protected getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mRootNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    return-object v0
.end method

.method public getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected inArea(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;FF)Z
    .locals 6
    .param p1, "area"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 676
    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->isLeftSide(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->isLeftSide(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->isLeftSide(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v2

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->mVertextIndexArray:[I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;->access$000(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->isLeftSide(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 704
    goto :goto_0
.end method

.method protected inLine(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;FF)Z
    .locals 3
    .param p1, "segment"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 655
    iget v1, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v1

    iget v2, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getDistanceFromSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)F

    move-result v0

    .line 660
    .local v0, "distance":F
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLineTouchRange:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 661
    const/4 v1, 0x1

    .line 663
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->clearFrame()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->initVertexArray()V

    .line 194
    return-void
.end method

.method public initVertexArray()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 202
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 205
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 209
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 210
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 211
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->set(FF)V

    .line 212
    return-void
.end method

.method public moveControlPointParallel(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x4

    .line 466
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitLeft:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget v11, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitRight:F

    sub-float/2addr v10, v11

    invoke-static {p1, v9, v10}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->limit(FFF)F

    move-result v6

    .line 471
    .local v6, "newCenterX":F
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitBottom:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitTop:F

    sub-float/2addr v10, v11

    invoke-static {p2, v9, v10}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->limit(FFF)F

    move-result v7

    .line 476
    .local v7, "newCenterY":F
    new-instance v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    .line 477
    .local v5, "newCenterVertex":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v9, v9, v12

    iget v9, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    sub-float v0, v6, v9

    .line 478
    .local v0, "dx":F
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v9, v9, v12

    iget v9, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    sub-float v1, v7, v9

    .line 480
    .local v1, "dy":F
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getControlPointVertexIndexSet()Ljava/util/Set;

    move-result-object v4

    .line 481
    .local v4, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 482
    .local v3, "index":I
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v9, v9, v3

    iget v10, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    add-float/2addr v10, v0

    iput v10, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 483
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v9, v9, v3

    iget v10, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    add-float/2addr v10, v1

    iput v10, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    .line 485
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRelatedSegment(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    move-result-object v8

    .line 486
    .local v8, "seg":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v11, v8, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v12, v8, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v12, v12, v3

    invoke-static {v9, v5, v10, v11, v12}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 494
    .end local v3    # "index":I
    .end local v8    # "seg":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 495
    .restart local v3    # "index":I
    invoke-direct {p0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->limitVertex(I)V

    goto :goto_1

    .line 498
    .end local v3    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateCenterVertexWithLimit()V

    .line 499
    return-void
.end method

.method public abstract moveControlPointPivot(IFF)V
.end method

.method public abstract needToMoveParallel(IFF)Z
.end method

.method protected pivotControlPoint(IIFF)V
    .locals 7
    .param p1, "pivotPointIndex"    # I
    .param p2, "movePointIndex"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 522
    invoke-virtual {p0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRelatedSegment(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    move-result-object v4

    .line 524
    .local v4, "relatedSegment":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v5, p1

    .line 525
    .local v0, "a1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1, p3, p4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    .line 526
    .local v1, "a2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v6, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    aget-object v2, v5, v6

    .line 527
    .local v2, "b1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v6, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    aget-object v3, v5, v6

    .line 529
    .local v3, "b2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, p2

    invoke-static {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 530
    invoke-direct {p0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->limitVertex(I)V

    .line 531
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateCenterVertexWithLimit()V

    .line 532
    return-void
.end method

.method public replaceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->replaceNodeId(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method protected rotateControlPointWithCenterVertex(IIFF)V
    .locals 9
    .param p1, "reversePointIndex"    # I
    .param p2, "movePointIndex"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v8, 0x4

    .line 552
    invoke-virtual {p0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRelatedSegment(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    move-result-object v4

    .line 553
    .local v4, "relatedSegmentIndexForMove":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRelatedSegment(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    move-result-object v5

    .line 556
    .local v5, "relatedSegmentIndexForReverse":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    invoke-virtual {p0, v8}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v0

    .line 557
    .local v0, "a1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    invoke-direct {v1, p3, p4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    .line 558
    .local v1, "a2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v7, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    aget-object v2, v6, v7

    .line 559
    .local v2, "b1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v7, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    aget-object v3, v6, v7

    .line 561
    .local v3, "b2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, p2

    invoke-static {v0, v1, v2, v3, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 562
    invoke-direct {p0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->limitVertex(I)V

    .line 565
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v6, v8

    .line 566
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v1, v6, p2

    .line 567
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v7, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    aget-object v2, v6, v7

    .line 568
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v7, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    aget-object v3, v6, v7

    .line 570
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, p1

    invoke-static {v0, v1, v2, v3, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 571
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->limitVertex(I)V

    .line 574
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v0, v6, v8

    .line 575
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v1, v6, p1

    .line 576
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v7, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    aget-object v2, v6, v7

    .line 577
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget v7, v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    aget-object v3, v6, v7

    .line 578
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, p2

    invoke-static {v0, v1, v2, v3, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 579
    invoke-direct {p0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->limitVertex(I)V

    .line 581
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateCenterVertexWithLimit()V

    .line 582
    return-void
.end method

.method protected searchPivotPointIndex(I)I
    .locals 4
    .param p1, "movePointIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 714
    if-ne p1, v1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v1

    .line 719
    :cond_1
    const/4 v1, -0x1

    .line 721
    .local v1, "pivotPointIndex":I
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getMovableSegmentList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    .line 722
    .local v2, "seg":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    iget v3, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    if-ne p1, v3, :cond_3

    .line 723
    iget v1, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    goto :goto_0

    .line 725
    :cond_3
    iget v3, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    if-ne p1, v3, :cond_2

    .line 726
    iget v1, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    goto :goto_0
.end method

.method public setControlPointDraggingLimit(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 241
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitLeft:F

    .line 242
    iput p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitTop:F

    .line 243
    iput p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitRight:F

    .line 244
    iput p4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitBottom:F

    .line 245
    return-void
.end method

.method public setControlPointTouchRange(F)V
    .locals 0
    .param p1, "range"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointTouchRange:F

    .line 254
    return-void
.end method

.method public setLineTouchRange(F)V
    .locals 0
    .param p1, "range"    # F

    .prologue
    .line 262
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLineTouchRange:F

    .line 263
    return-void
.end method

.method protected setRootNode(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V
    .locals 0
    .param p1, "rootNode"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mRootNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 233
    return-void
.end method

.method public swapFrame(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "fromFrameId"    # Ljava/lang/String;
    .param p2, "toFrameId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->swapFrame(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 301
    .local v0, "changedLayoutFrameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->initCenterHorizontalVertexArray()V

    .line 305
    :cond_0
    return-object v0
.end method

.method protected updateCenterVertex([Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;Z)V
    .locals 13
    .param p1, "vertexArray"    # [Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .param p2, "needTolimit"    # Z

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v12, 0x4

    .line 597
    const/4 v9, 0x1

    aget-object v7, p1, v9

    .line 598
    .local v7, "vSeg1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    const/4 v9, 0x7

    aget-object v8, p1, v9

    .line 603
    .local v8, "vSeg2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootNode()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getControlPointVertexIndexSet()Ljava/util/Set;

    move-result-object v5

    .line 604
    .local v5, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 605
    .local v1, "existCenterLeft":Z
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 606
    .local v2, "existCenterRight":Z
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 607
    aget-object v3, p1, v10

    .line 608
    .local v3, "hSeg1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    aget-object v4, p1, v12

    .line 618
    .local v4, "hSeg2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    :goto_0
    aget-object v9, p1, v12

    invoke-static {v3, v4, v7, v8, v9}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 621
    if-eqz p2, :cond_0

    .line 622
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitTop:F

    sub-float v6, v9, v10

    .line 623
    .local v6, "topLimit":F
    iget-object v9, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mControlPointDraggingLimitBottom:F

    add-float v0, v9, v10

    .line 624
    .local v0, "bottomLimit":F
    aget-object v9, p1, v12

    iget v9, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    cmpl-float v9, v9, v6

    if-lez v9, :cond_3

    .line 625
    new-instance v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-direct {v9, v10, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    new-instance v10, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget-object v11, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-direct {v10, v11, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    aget-object v11, p1, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 644
    .end local v0    # "bottomLimit":F
    .end local v6    # "topLimit":F
    :cond_0
    :goto_1
    return-void

    .line 609
    .end local v3    # "hSeg1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .end local v4    # "hSeg2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 610
    aget-object v3, p1, v12

    .line 611
    .restart local v3    # "hSeg1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    aget-object v4, p1, v11

    .restart local v4    # "hSeg2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    goto :goto_0

    .line 613
    .end local v3    # "hSeg1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .end local v4    # "hSeg2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    :cond_2
    aget-object v3, p1, v10

    .line 614
    .restart local v3    # "hSeg1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    aget-object v4, p1, v11

    .restart local v4    # "hSeg2":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    goto :goto_0

    .line 632
    .restart local v0    # "bottomLimit":F
    .restart local v6    # "topLimit":F
    :cond_3
    aget-object v9, p1, v12

    iget v9, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    cmpg-float v9, v9, v0

    if-gez v9, :cond_0

    .line 633
    new-instance v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-direct {v9, v10, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    new-instance v10, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    iget-object v11, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-direct {v10, v11, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;-><init>(FF)V

    aget-object v11, p1, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1
.end method

.method public updateExpandedVertexArray()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x0

    const v7, 0x3c23d70a    # 0.01f

    .line 794
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 795
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    .line 797
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 798
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    .line 800
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 801
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    .line 803
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v12

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 804
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v12

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mLayoutSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    .line 806
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v2

    .line 807
    .local v2, "vertex4":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget v6, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    .line 808
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget v6, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    iput v6, v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    .line 810
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v0

    .line 811
    .local v0, "vertex1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v0, v2, v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 815
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v1

    .line 816
    .local v1, "vertex3":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static {v1, v2, v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 820
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    .line 821
    .local v3, "vertex5":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, v12

    iget-object v7, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-static {v3, v2, v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 825
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v4

    .line 826
    .local v4, "vertex7":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    aget-object v6, v6, v12

    iget-object v7, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->mSplitLineVertexArray:[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-static {v4, v2, v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 829
    return-void
.end method
