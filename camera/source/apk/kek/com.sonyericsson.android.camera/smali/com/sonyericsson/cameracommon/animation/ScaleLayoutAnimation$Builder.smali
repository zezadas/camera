.class public Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;
.super Ljava/lang/Object;
.source "ScaleLayoutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;-><init>(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mOriginalWidth:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$102(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mOriginalHeight:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$202(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 85
    return-void
.end method


# virtual methods
.method public create()Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$300(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToWidth:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$500(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I

    move-result v2

    sub-int/2addr v1, v2

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mDiffWidth:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$702(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$400(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToHeight:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$600(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I

    move-result v2

    sub-int/2addr v1, v2

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mDiffHeight:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$802(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$300(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$400(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    return-object v0
.end method

.method public setDuration(I)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->setDuration(J)V

    .line 101
    return-object p0
.end method

.method public setFromSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;
    .locals 1
    .param p1, "fromWidth"    # I
    .param p2, "fromHeight"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$302(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$402(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 90
    return-object p0
.end method

.method public setToSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;
    .locals 1
    .param p1, "toWidth"    # I
    .param p2, "toHeight"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToWidth:I
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$502(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->mParentInstance:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    # setter for: Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToHeight:I
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->access$602(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I

    .line 96
    return-object p0
.end method
