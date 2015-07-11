.class public Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleLayoutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$1;,
        Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;
    }
.end annotation


# instance fields
.field private mDiffHeight:I

.field private mDiffWidth:I

.field private mFromHeight:I

.field private mFromWidth:I

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mToHeight:I

.field private mToWidth:I

.field mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mOriginalWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mOriginalHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mToHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mDiffWidth:I

    return p1
.end method

.method static synthetic access$802(Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mDiffHeight:I

    return p1
.end method

.method private prepareSize()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 76
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 54
    iget v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mDiffWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 55
    .local v1, "newWidth":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mFromHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mDiffHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 57
    .local v0, "newHeight":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 60
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 45
    return-void
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->prepareSize()V

    .line 64
    return-void
.end method

.method public resetSize()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mOriginalWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mOriginalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 70
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
