.class public Lcom/sonyericsson/android/camera/view/TouchArea;
.super Landroid/widget/RelativeLayout;
.source "TouchArea.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsCanceled:Z

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mTouchArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/view/TouchArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/TouchArea;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/TouchArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/TouchArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 74
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 79
    .local v2, "y":I
    const/4 v0, 0x0

    .line 80
    .local v0, "contains":Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mTouchArea:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 86
    :cond_0
    return v0
.end method

.method public getTouchAreaRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mTouchArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 96
    .local v0, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 128
    .end local v0    # "consumed":Z
    :cond_1
    :goto_1
    return v0

    .line 98
    .restart local v0    # "consumed":Z
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mIsCanceled:Z

    .line 99
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/TouchArea;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 108
    :pswitch_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mIsCanceled:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/TouchArea;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mIsCanceled:Z

    .line 114
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setSurfaceArea(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/TouchArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51
    .local v0, "margin":I
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mTouchArea:Landroid/graphics/Rect;

    .line 56
    return-void
.end method

.method public setTocuhAreaListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/TouchArea;->mListener:Landroid/view/View$OnTouchListener;

    .line 68
    return-void
.end method
