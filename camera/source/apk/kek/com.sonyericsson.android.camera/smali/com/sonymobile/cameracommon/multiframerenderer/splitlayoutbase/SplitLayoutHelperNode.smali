.class public Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
.super Ljava/lang/Object;
.source "SplitLayoutHelperNode.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = "EMPTY"

.field public static final FILL_CHILD:Ljava/lang/String; = "FILL_CHILD"


# instance fields
.field protected final mArea:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

.field protected final mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

.field protected final mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

.field protected mFrameId:Ljava/lang/String;

.field protected final mMovalbleSegment:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

.field private mNest:I

.field protected mNodeNameForDebug:Ljava/lang/String;

.field protected mParentNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

.field protected mTempFrameIdForCopy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;)V
    .locals 1
    .param p1, "childNode0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    .param p2, "childNode1"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    .param p3, "area"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    .param p4, "movalbleSegment"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mNest:I

    .line 69
    const-string v0, "EMPTY"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 70
    const-string v0, "EMPTY"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mTempFrameIdForCopy:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mParentNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 73
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 74
    iput-object p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 75
    iput-object p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mArea:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    .line 76
    iput-object p4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mMovalbleSegment:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iput-object p0, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mParentNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 80
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iput-object p0, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mParentNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 83
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->setNodeNest(I)V

    .line 84
    return-void
.end method

.method private collectArea(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "collector":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "EMPTY"

    if-ne v0, v1, :cond_0

    .line 456
    :goto_0
    return-object p1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "FILL_CHILD"

    if-ne v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectArea(Ljava/util/Set;)Ljava/util/Set;

    .line 451
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectArea(Ljava/util/Set;)Ljava/util/Set;

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mArea:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private collectControlPointVertexIndex(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "collector":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "EMPTY"

    if-ne v0, v1, :cond_0

    .line 423
    :goto_0
    return-object p1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "FILL_CHILD"

    if-ne v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectControlPointVertexIndex(Ljava/util/Set;)Ljava/util/Set;

    .line 418
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectControlPointVertexIndex(Ljava/util/Set;)Ljava/util/Set;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mMovalbleSegment:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    iget v0, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mMovalbleSegment:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    iget v0, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private collectFrameId(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "collector":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "EMPTY"

    if-ne v0, v1, :cond_0

    .line 408
    :goto_0
    return-object p1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "FILL_CHILD"

    if-ne v0, v1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectFrameId(Ljava/util/List;)Ljava/util/List;

    .line 403
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectFrameId(Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private collectMovableSegment(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "collector":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "EMPTY"

    if-ne v0, v1, :cond_0

    .line 439
    :goto_0
    return-object p1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v1, "FILL_CHILD"

    if-ne v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectMovableSegment(Ljava/util/Set;)Ljava/util/Set;

    .line 435
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectMovableSegment(Ljava/util/Set;)Ljava/util/Set;

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mMovalbleSegment:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private copyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V
    .locals 0
    .param p1, "src"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->prepareCopyFrameIdTree()V

    .line 211
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->doCopyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V

    .line 212
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->finalizeCopyFrameIdTree()V

    .line 213
    return-void
.end method

.method private doCopyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V
    .locals 2
    .param p1, "src"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .prologue
    .line 225
    iget-object v0, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mTempFrameIdForCopy:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iget-object v1, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->doCopyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V

    .line 228
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iget-object v1, p1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->doCopyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V

    .line 230
    :cond_0
    return-void
.end method

.method private finalizeCopyFrameIdTree()V
    .locals 1

    .prologue
    .line 233
    const-string v0, "EMPTY"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mTempFrameIdForCopy:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->finalizeCopyFrameIdTree()V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->finalizeCopyFrameIdTree()V

    .line 238
    :cond_0
    return-void
.end method

.method private prepareCopyFrameIdTree()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mTempFrameIdForCopy:Ljava/lang/String;

    .line 217
    const-string v0, "EMPTY"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->prepareCopyFrameIdTree()V

    .line 220
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->prepareCopyFrameIdTree()V

    .line 222
    :cond_0
    return-void
.end method

.method private setNodeNest(I)V
    .locals 2
    .param p1, "nest"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mNest:I

    .line 461
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->setNodeNest(I)V

    .line 463
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->setNodeNest(I)V

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public addFrame(Ljava/lang/String;)Z
    .locals 4
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Don\'t set null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v3, "EMPTY"

    if-ne v2, v3, :cond_2

    .line 107
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 148
    :cond_1
    :goto_0
    return v0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 114
    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v3, "FILL_CHILD"

    if-ne v2, v3, :cond_4

    .line 119
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->addFrame(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->addFrame(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 125
    goto :goto_0

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    if-eq v1, v2, :cond_5

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child node 0 is not empty : Frame id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    if-eq v1, v2, :cond_6

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child node 1 is not empty : Frame id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->addFrame(Ljava/lang/String;)Z

    .line 144
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v1, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->addFrame(Ljava/lang/String;)Z

    .line 146
    const-string v1, "FILL_CHILD"

    iput-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public clearFrame()V
    .locals 1

    .prologue
    .line 376
    const-string v0, "EMPTY"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->clearFrame()V

    .line 379
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->clearFrame()V

    .line 381
    :cond_0
    return-void
.end method

.method public deleteFrame(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    .locals 4
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Don\'t set null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v3, "EMPTY"

    if-ne v2, v3, :cond_1

    .line 164
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty node."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    const-string v3, "FILL_CHILD"

    if-ne v2, v3, :cond_7

    .line 169
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->deleteFrame(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    .line 170
    .local v0, "deletedNode0":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    if-eqz v0, :cond_4

    .line 171
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    if-ne v0, v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EMPTY"

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILL_CHILD"

    if-ne v2, v3, :cond_3

    .line 174
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->copyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V

    .line 206
    .end local v0    # "deletedNode0":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    :cond_2
    :goto_0
    return-object v0

    .line 176
    .restart local v0    # "deletedNode0":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    const-string v3, "EMPTY"

    iput-object v3, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->deleteFrame(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v1

    .line 184
    .local v1, "deletedNode1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    if-eqz v1, :cond_8

    .line 185
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    if-ne v1, v2, :cond_5

    .line 186
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EMPTY"

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->getFrameId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILL_CHILD"

    if-ne v2, v3, :cond_6

    .line 188
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-direct {p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->copyFrameIdTree(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;)V

    :cond_5
    :goto_1
    move-object v0, v1

    .line 194
    goto :goto_0

    .line 190
    :cond_6
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    const-string v3, "EMPTY"

    iput-object v3, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    goto :goto_1

    .line 200
    .end local v0    # "deletedNode0":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    .end local v1    # "deletedNode1":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    const-string v2, "EMPTY"

    iput-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    move-object v0, p0

    .line 202
    goto :goto_0

    .line 206
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    .locals 3
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    if-nez p1, :cond_1

    move-object v0, v1

    .line 306
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 288
    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->hasChild()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 292
    goto :goto_0

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    .line 297
    .local v0, "foundNode":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    if-nez v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    move-object v0, v1

    .line 306
    goto :goto_0
.end method

.method public getArea()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mArea:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    return-object v0
.end method

.method public getAreaSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectArea(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getControlPointVertexIndexSet()Ljava/util/Set;
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
    .line 351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectControlPointVertexIndex(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    return-object v0
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
    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectFrameId(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMovableSegmentSet()Ljava/util/Set;
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
    .line 360
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->collectMovableSegment(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentVertexIndex()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mMovalbleSegment:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    return-object v0
.end method

.method protected hasChild()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mChildNode1:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceNodeId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v0

    .line 469
    .local v0, "targetNode":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    iput-object p2, v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setNodeNameForDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mNodeNameForDebug:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public swapFrame(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
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
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "layoutChangedFrameId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v1

    .line 260
    .local v1, "nodeFrom":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    invoke-virtual {p0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->findNode(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    move-result-object v2

    .line 263
    .local v2, "nodeTo":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;
    iget v3, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mNest:I

    iget v4, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mNest:I

    if-gt v3, v4, :cond_0

    .line 264
    iput-object p2, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 265
    iput-object p1, v2, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    .line 273
    :goto_0
    return-object v0

    .line 268
    :cond_0
    iget-object v3, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mParentNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    invoke-virtual {v3, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->deleteFrame(Ljava/lang/String;)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    .line 269
    invoke-virtual {v2, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->addFrame(Ljava/lang/String;)Z

    .line 270
    iget-object v3, v1, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mParentNode:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mNodeNameForDebug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Frame Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mFrameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Area = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperNode;->mArea:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Area;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
