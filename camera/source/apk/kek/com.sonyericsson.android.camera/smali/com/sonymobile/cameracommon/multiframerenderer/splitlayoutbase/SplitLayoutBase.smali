.class public abstract Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
.super Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;
.source "SplitLayoutBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/multiframerenderer/MultiFramePresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    }
.end annotation


# static fields
.field protected static final CONTROLPOINT_Z_ORDER:F = 4.0E-5f

.field private static final DRAGGING_MODE_PARALLEL:I = 0x1

.field private static final DRAGGING_MODE_PIVOT:I = 0x2

.field private static final DRAGGING_MODE_UNKNOWN:I = 0x0

.field protected static final FRAMEID_CONTROLPOINT_0:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_0"

.field protected static final FRAMEID_CONTROLPOINT_1:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_1"

.field protected static final FRAMEID_CONTROLPOINT_2:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_2"

.field protected static final FRAMEID_CONTROLPOINT_3:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_3"

.field protected static final FRAMEID_CONTROLPOINT_4:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_4"

.field protected static final FRAMEID_CONTROLPOINT_5:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_5"

.field protected static final FRAMEID_CONTROLPOINT_6:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_6"

.field protected static final FRAMEID_CONTROLPOINT_7:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_7"

.field protected static final FRAMEID_CONTROLPOINT_8:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_8"

.field protected static final FRAMEID_OVERLAY:Ljava/lang/String; = "FRAMEID_OVERLAY"

.field protected static final FRAMEID_VIDEO_OVERLAY:Ljava/lang/String; = "FRAMEID_VIDEO_OVERLAY"

.field protected static final OVERLAY_BITMAP_SCALE:F = 0.5f

.field protected static final OVERLAY_HIGHLIGHT_DEAULT_COLOR:I = -0x7f000001

.field protected static final OVERLAY_Z_ORDER:F = 2.0E-5f

.field protected static final PREVIEW_Z_ORDER:F

.field protected static final TAG:Ljava/lang/String;

.field protected static final sControlPointFrameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mControlPointAlpha:F

.field private mControlPointBaseScaleX:F

.field private mControlPointBaseScaleY:F

.field private mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

.field private mControlPointResourceId:I

.field private mControlPointScale:F

.field private mDraggingMode:I

.field private mDraggingVertexIndex:I

.field private mIsAdjustingLayout:Z

.field private mIsEnabledOutline:Z

.field private mIsReady:Z

.field private mOutLinePaint:Landroid/graphics/Paint;

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mOverlayCanvas:Landroid/graphics/Canvas;

.field private mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

.field private mPreviewFrameBaseFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewFrameBaseFactoryShader:I

.field private mSplitLinePaint:Landroid/graphics/Paint;

.field private mStreamFrameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoOutLinePaint:Landroid/graphics/Paint;

.field private mVideoOverlayBitmap:Landroid/graphics/Bitmap;

.field private mVideoOverlayCanvas:Landroid/graphics/Canvas;

.field private mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

.field private mVideoSplitLinePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->TAG:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    .line 133
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    .line 138
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    .line 151
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    .line 158
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    .line 170
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointAlpha:F

    .line 171
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    .line 172
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    .line 173
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    .line 180
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    .line 189
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    return p1
.end method

.method private clearCanvasLines(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 737
    :goto_0
    return-void

    .line 736
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private final drawHighlightFrameToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    .line 691
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getVertexArrayAsWindowCoord(Ljava/lang/String;)[Landroid/graphics/Point;

    move-result-object v6

    .line 692
    .local v6, "pointArray":[Landroid/graphics/Point;
    if-nez v6, :cond_0

    .line 717
    :goto_0
    return-void

    .line 697
    :cond_0
    move-object v0, v6

    .local v0, "arr$":[Landroid/graphics/Point;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 698
    .local v5, "point":Landroid/graphics/Point;
    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v5, Landroid/graphics/Point;->x:I

    .line 699
    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v5, Landroid/graphics/Point;->y:I

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 703
    .end local v5    # "point":Landroid/graphics/Point;
    :cond_1
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 704
    .local v3, "outSidepath":Landroid/graphics/Path;
    aget-object v7, v6, v10

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aget-object v8, v6, v10

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 705
    aget-object v7, v6, v9

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aget-object v8, v6, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 706
    aget-object v7, v6, v11

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aget-object v8, v6, v11

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 707
    aget-object v7, v6, v12

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aget-object v8, v6, v12

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 708
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 711
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 712
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 713
    const v7, -0x7f000001

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 716
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private final drawLinesToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "splitLinePaint"    # Landroid/graphics/Paint;
    .param p3, "outLinePaint"    # Landroid/graphics/Paint;
    .param p4, "isEnabledOutline"    # Z

    .prologue
    .line 615
    const/high16 v6, 0x3f000000    # 0.5f

    .line 616
    .local v6, "bitmapScale":F
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v8

    .line 619
    .local v8, "layoutHelper":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->clearCanvasLines(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateExpandedVertexArray()V

    .line 624
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getMovableSegmentList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    .line 625
    .local v10, "segment":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    iget v0, v10, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    invoke-virtual {v8, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getExpandedVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v11

    .line 627
    .local v11, "winP0":Landroid/graphics/Point;
    iget v0, v10, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    invoke-virtual {v8, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getExpandedVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v12

    .line 629
    .local v12, "winP1":Landroid/graphics/Point;
    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    .line 633
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 640
    .end local v10    # "segment":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    .end local v11    # "winP0":Landroid/graphics/Point;
    .end local v12    # "winP1":Landroid/graphics/Point;
    :cond_1
    if-eqz p4, :cond_2

    .line 641
    invoke-virtual {v8}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootAreaVertexArray()[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v9

    .line 642
    .local v9, "rootAreaVertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v11

    .line 643
    .restart local v11    # "winP0":Landroid/graphics/Point;
    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v12

    .line 644
    .restart local v12    # "winP1":Landroid/graphics/Point;
    const/4 v0, 0x2

    aget-object v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v13

    .line 645
    .local v13, "winP2":Landroid/graphics/Point;
    const/4 v0, 0x3

    aget-object v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v14

    .line 646
    .local v14, "winP3":Landroid/graphics/Point;
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    if-eqz v14, :cond_2

    .line 647
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 652
    iget v0, v12, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 657
    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 662
    iget v0, v14, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 668
    .end local v9    # "rootAreaVertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .end local v11    # "winP0":Landroid/graphics/Point;
    .end local v12    # "winP1":Landroid/graphics/Point;
    .end local v13    # "winP2":Landroid/graphics/Point;
    .end local v14    # "winP3":Landroid/graphics/Point;
    :cond_2
    return-void
.end method

.method private needToMoveParallel(IFF)Z
    .locals 2
    .param p1, "movePointIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v0, 0x1

    .line 1071
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    if-nez v1, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->needToMoveParallel(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    .line 1079
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    if-ne v1, v0, :cond_2

    .line 1082
    :goto_1
    return v0

    .line 1075
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    goto :goto_0

    .line 1082
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private renderControPoints(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 7
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "renderbase"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 876
    sget-object v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 877
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    .line 879
    .local v3, "vertex":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    mul-float v1, v4, v5

    .line 880
    .local v1, "scaleX":F
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    mul-float v2, v4, v5

    .line 882
    .local v2, "scaleY":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 883
    iget v4, v3, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    iget v5, v3, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    const v6, 0x3827c5ac    # 4.0E-5f

    invoke-virtual {p2, v4, v5, v6}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 884
    check-cast p2, Lcom/sonymobile/cameracommon/opengl/FrameBase;

    .end local p2    # "renderbase":Lcom/sonymobile/cameracommon/opengl/RenderBase;
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointAlpha:F

    invoke-virtual {p2, v4}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->setAlpha(F)V

    .line 885
    return-void
.end method

.method private renderOverlay(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 2
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "renderbase"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    const/4 v1, 0x0

    .line 746
    const v0, 0x37a7c5ac    # 2.0E-5f

    invoke-virtual {p2, v1, v1, v0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 747
    return-void
.end method

.method private setupControlPoint()V
    .locals 8

    .prologue
    .line 891
    new-instance v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    iget v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointResourceId:I

    invoke-direct {v5, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;-><init>(I)V

    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    .line 893
    sget-object v5, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 894
    .local v0, "frameId":Ljava/lang/String;
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    goto :goto_0

    .line 897
    .end local v0    # "frameId":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 898
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 900
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointResourceId:I

    invoke-static {v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 905
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 906
    .local v3, "imageWidth":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 908
    .local v2, "imageHeight":I
    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    .line 909
    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    .line 910
    return-void
.end method

.method private setupOverlay()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 753
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 758
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 759
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 761
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 766
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 768
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-direct {v0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 770
    const-string v0, "FRAMEID_OVERLAY"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {p0, v0, v4, v1, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    .line 777
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 778
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 779
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 781
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    .line 786
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    .line 788
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-direct {v0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 790
    const-string v0, "FRAMEID_VIDEO_OVERLAY"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {p0, v0, v4, v1, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addFrameId(Ljava/lang/String;)V
    .locals 3
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 199
    monitor-enter p0

    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    .line 217
    .local v0, "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    .line 219
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->addFrame(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 214
    :cond_3
    :try_start_1
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    .line 215
    .restart local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized clearLines()V
    .locals 1

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->clearCanvasLines(Landroid/graphics/Canvas;)V

    .line 724
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->clearCanvasLines(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected convertToPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 961
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public declared-synchronized deleteFrameId(Ljava/lang/String;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->deleteFrame(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 242
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->unregisterFrameInfo(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected disableFunctions()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method protected dragControlPoint(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getObjectCoordFromWindowCoord(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1033
    .local v0, "coord":Landroid/graphics/PointF;
    if-nez v0, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->needToMoveParallel(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->moveControlPointParallel(FF)V

    .line 1047
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->moveControlPointPivot(IFF)V

    goto :goto_1
.end method

.method protected declared-synchronized drawHighlightFrame(Ljava/lang/String;)V
    .locals 2
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawHighlightFrameToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 677
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 679
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawHighlightFrameToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 680
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized drawLines()V
    .locals 4

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 606
    :goto_0
    monitor-exit p0

    return-void

    .line 593
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLinesToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 598
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 600
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLinesToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 605
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected enableFunctions()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public endAdjustLayout(Z)V
    .locals 1
    .param p1, "withTransition"    # Z

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    .line 351
    return-void
.end method

.method protected finishDraggingControlPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1056
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->dragControlPoint(Landroid/graphics/Point;)V

    .line 1057
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    .line 1059
    return-void
.end method

.method public getFrameIdList()Ljava/util/List;
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
    .line 193
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    return-object v0
.end method

.method protected getObjectCoordFromWindowCoord(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getObjectCoordFromWindowCoord(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 974
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;
.end method

.method protected getTexCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F
    .locals 22
    .param p1, "leftTop"    # Landroid/graphics/PointF;
    .param p2, "leftBottom"    # Landroid/graphics/PointF;
    .param p3, "rightTop"    # Landroid/graphics/PointF;
    .param p4, "rightBottom"    # Landroid/graphics/PointF;

    .prologue
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getNormalizedWidth()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v11, v18, v19

    .line 460
    .local v11, "nw":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getNormalizedHeight()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v10, v18, v19

    .line 462
    .local v10, "nh":F
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [Landroid/graphics/PointF;

    const/16 v18, 0x0

    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    div-float v20, v20, v11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    div-float v21, v21, v10

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v19, v13, v18

    const/16 v18, 0x1

    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    div-float v20, v20, v11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    div-float v21, v21, v10

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v19, v13, v18

    const/16 v18, 0x2

    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    div-float v20, v20, v11

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    div-float v21, v21, v10

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v19, v13, v18

    const/16 v18, 0x3

    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    div-float v20, v20, v11

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    div-float v21, v21, v10

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v19, v13, v18

    .line 469
    .local v13, "pointArray":[Landroid/graphics/PointF;
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 470
    .local v8, "left":F
    const/4 v14, 0x1

    .line 471
    .local v14, "right":F
    const/16 v17, 0x1

    .line 472
    .local v17, "top":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 474
    .local v2, "bottom":F
    move-object v1, v13

    .local v1, "arr$":[Landroid/graphics/PointF;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_4

    aget-object v12, v1, v7

    .line 475
    .local v12, "point":Landroid/graphics/PointF;
    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    cmpg-float v18, v18, v8

    if-gez v18, :cond_0

    .line 476
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 478
    :cond_0
    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    cmpl-float v18, v18, v14

    if-lez v18, :cond_1

    .line 479
    iget v14, v12, Landroid/graphics/PointF;->x:F

    .line 481
    :cond_1
    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    cmpl-float v18, v18, v17

    if-lez v18, :cond_2

    .line 482
    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    .line 484
    :cond_2
    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    cmpg-float v18, v18, v2

    if-gez v18, :cond_3

    .line 485
    iget v2, v12, Landroid/graphics/PointF;->y:F

    .line 474
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 489
    .end local v12    # "point":Landroid/graphics/PointF;
    :cond_4
    sub-float v5, v14, v8

    .line 490
    .local v5, "dx":F
    sub-float v6, v17, v2

    .line 491
    .local v6, "dy":F
    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v5, v18

    add-float v3, v18, v8

    .line 492
    .local v3, "cx":F
    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v6, v18

    add-float v4, v18, v2

    .line 493
    .local v4, "cy":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 495
    .local v15, "size":F
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    sub-float v19, v19, v3

    div-float v19, v19, v15

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    sub-float v19, v19, v4

    div-float v19, v19, v15

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x2

    const/16 v19, 0x1

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    sub-float v19, v19, v3

    div-float v19, v19, v15

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x3

    const/16 v19, 0x1

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    sub-float v19, v19, v4

    div-float v19, v19, v15

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x4

    const/16 v19, 0x2

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    sub-float v19, v19, v3

    div-float v19, v19, v15

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x5

    const/16 v19, 0x2

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    sub-float v19, v19, v4

    div-float v19, v19, v15

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x6

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    sub-float v19, v19, v3

    div-float v19, v19, v15

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    const/16 v18, 0x7

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    sub-float v19, v19, v4

    div-float v19, v19, v15

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    aput v19, v16, v18

    .line 505
    .local v16, "texCoord":[F
    return-object v16
.end method

.method protected getVertexArrayAsWindowCoord(Ljava/lang/String;)[Landroid/graphics/Point;
    .locals 11
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getAreaVertexArray(Ljava/lang/String;)[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v5

    .line 990
    .local v5, "vertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    aget-object v6, v5, v7

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v1

    .line 991
    .local v1, "leftTop":Landroid/graphics/Point;
    aget-object v6, v5, v8

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v4

    .line 992
    .local v4, "rightTop":Landroid/graphics/Point;
    aget-object v6, v5, v9

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v3

    .line 993
    .local v3, "rightBottom":Landroid/graphics/Point;
    aget-object v6, v5, v10

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v0

    .line 997
    .local v0, "leftBottom":Landroid/graphics/Point;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 1001
    :cond_0
    const/4 v2, 0x0

    .line 1005
    :goto_0
    return-object v2

    .line 1004
    :cond_1
    const/4 v6, 0x4

    new-array v2, v6, [Landroid/graphics/Point;

    aput-object v1, v2, v7

    aput-object v4, v2, v8

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    .line 1005
    .local v2, "pointArray":[Landroid/graphics/Point;
    goto :goto_0
.end method

.method protected isAdjustingLayout()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    return v0
.end method

.method protected isDraggingControlPoint()Z
    .locals 2

    .prologue
    .line 1067
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    return v0
.end method

.method protected onObjectCoordTransformRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "renderbase"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 269
    const-string v0, "FRAMEID_OVERLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FRAMEID_VIDEO_OVERLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->renderOverlay(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->renderControPoints(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    goto :goto_0
.end method

.method protected onObjectVertexUpdateRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameBase"    # Lcom/sonymobile/cameracommon/opengl/FrameBase;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->renderPreview(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;F)V

    .line 285
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->onSurfaceChanged(II)V

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupSplitLayoutInstances()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V

    .line 295
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 296
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public releaseGlEglRelatedInstances()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 300
    iput-boolean v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    .line 303
    .local v0, "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->release()V

    goto :goto_0

    .line 313
    .end local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 305
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 306
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 308
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 313
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    if-eqz v4, :cond_3

    .line 315
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    invoke-static {v4}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 316
    iput v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    .line 319
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->release()V

    .line 320
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 322
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 324
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 325
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    :cond_4
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 329
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->release()V

    .line 330
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    .line 332
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->release()V

    .line 333
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 335
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    .line 337
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 338
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    :cond_5
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    .line 341
    return-void
.end method

.method protected renderPreview(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;F)V
    .locals 12
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameBase"    # Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .param p3, "zOrder"    # F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getAreaVertexArray(Ljava/lang/String;)[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v5

    .line 420
    .local v5, "vertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    aget-object v1, v5, v8

    .line 421
    .local v1, "leftTop":Landroid/graphics/PointF;
    aget-object v3, v5, v9

    .line 422
    .local v3, "rightTop":Landroid/graphics/PointF;
    aget-object v2, v5, v10

    .line 423
    .local v2, "rightBottom":Landroid/graphics/PointF;
    aget-object v0, v5, v11

    .line 425
    .local v0, "leftBottom":Landroid/graphics/PointF;
    const/16 v6, 0xc

    new-array v6, v6, [F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    aput v7, v6, v8

    iget v7, v1, Landroid/graphics/PointF;->y:F

    aput v7, v6, v9

    aput p3, v6, v10

    iget v7, v0, Landroid/graphics/PointF;->x:F

    aput v7, v6, v11

    const/4 v7, 0x4

    iget v8, v0, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    const/4 v7, 0x5

    aput p3, v6, v7

    const/4 v7, 0x6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    const/16 v7, 0x8

    aput p3, v6, v7

    const/16 v7, 0x9

    iget v8, v2, Landroid/graphics/PointF;->x:F

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, v2, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    const/16 v7, 0xb

    aput p3, v6, v7

    invoke-virtual {p2, v6}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateVertexBuffer([F)V

    .line 433
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getTexCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F

    move-result-object v4

    .line 435
    .local v4, "texCoord":[F
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->isMirroredFrameStruct(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 437
    invoke-virtual {p0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mirroringTextureCoordinate([F)[F

    move-result-object v4

    .line 440
    :cond_0
    invoke-virtual {p2, v4}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateTextureBuffer([F)V

    .line 441
    return-void
.end method

.method public declared-synchronized replaceFrameId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 1089
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    :goto_0
    monitor-exit p0

    return-void

    .line 1095
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->replaceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1098
    .local v1, "index":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1100
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->unregisterFrameInfo(Ljava/lang/String;)V

    .line 1103
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    .line 1110
    .local v0, "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    .line 1111
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1089
    .end local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1106
    .restart local v1    # "index":I
    :cond_1
    :try_start_2
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    .line 1107
    .restart local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected setControlPointAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 857
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointAlpha:F

    .line 858
    return-void
.end method

.method public setControlPointResourceId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 848
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointResourceId:I

    .line 849
    return-void
.end method

.method protected setControlPointScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 866
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    .line 867
    return-void
.end method

.method protected declared-synchronized setEnableDrawingOutline(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLineColorForVideo(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLineWidth(F)V
    .locals 4
    .param p1, "width"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    mul-float v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 579
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 581
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    mul-float v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 582
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setupSplitLayoutHelper()V
    .locals 5

    .prologue
    .line 380
    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 381
    .local v2, "touchArea":F
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->setControlPointTouchRange(F)V

    .line 382
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->setLineTouchRange(F)V

    .line 384
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "frameId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->addFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v0    # "frameId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 388
    return-void
.end method

.method protected setupSplitLayoutInstances()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupOverlay()V

    .line 372
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupControlPoint()V

    .line 373
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupSplitLayoutHelper()V

    .line 374
    return-void
.end method

.method public startAdjustLayout(Z)V
    .locals 1
    .param p1, "withTransition"    # Z

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    .line 346
    return-void
.end method

.method protected startDraggingControlPoint(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getObjectCoordFromWindowCoord(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1017
    .local v0, "coord":Landroid/graphics/PointF;
    if-nez v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getControlPointIndex(FF)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    goto :goto_0
.end method

.method public swapSortOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "frameId0"    # Ljava/lang/String;
    .param p2, "frameId1"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 361
    .local v0, "index0":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 362
    .local v1, "index1":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 364
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V

    .line 365
    return-void
.end method

.method protected abstract updateSortOrder()V
.end method
