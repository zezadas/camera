.class public Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;
.super Ljava/lang/Object;
.source "FrontCameraLocationIndicatorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

.field private final mBackgroundKeyListener:Landroid/view/View$OnKeyListener;

.field private final mBackgroundTouchListener:Landroid/view/View$OnTouchListener;

.field private final mCloseListener:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

.field private final mDialogTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOkButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private final mParent:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;)V
    .locals 1
    .param p1, "parentView"    # Landroid/widget/FrameLayout;
    .param p2, "closeListener"    # Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$1;-><init>(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mDialogTouchListener:Landroid/view/View$OnTouchListener;

    .line 176
    new-instance v0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;-><init>(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    .line 186
    new-instance v0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;-><init>(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mBackgroundTouchListener:Landroid/view/View$OnTouchListener;

    .line 197
    new-instance v0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;-><init>(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mBackgroundKeyListener:Landroid/view/View$OnKeyListener;

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mCloseListener:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->updateLayoutSize()V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/ExtendedActivity;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mCloseListener:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

    return-object v0
.end method

.method private applySensorOrientation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->getLayout()Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, "layout":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 127
    iget v4, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mOrientation:I

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 129
    .local v0, "degree":F
    const v4, 0x7f0f005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 130
    .local v2, "image":Landroid/widget/ImageView;
    cmpl-float v4, v0, v6

    if-nez v4, :cond_1

    const v4, 0x7f02000f

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    const v4, 0x7f0f005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "dialog":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    cmpl-float v4, v0, v6

    if-nez v4, :cond_2

    const v4, 0x7f0c00b5

    :goto_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->getDimen(I)I

    move-result v4

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 140
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 142
    .end local v0    # "degree":F
    .end local v1    # "dialog":Landroid/view/View;
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 130
    .restart local v0    # "degree":F
    .restart local v2    # "image":Landroid/widget/ImageView;
    :cond_1
    const v4, 0x7f020010

    goto :goto_0

    .line 136
    .restart local v1    # "dialog":Landroid/view/View;
    :cond_2
    const v4, 0x7f0c00b4

    goto :goto_1
.end method

.method private attatchView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 97
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "layout":Landroid/view/View;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mBackgroundTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mBackgroundKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 102
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    const v3, 0x7f0f0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    .local v0, "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v3, 0x7f0f005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "dialog":Landroid/view/View;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    return-void
.end method

.method private detatchView()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "layout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 118
    :cond_0
    return-void
.end method

.method private getDimen(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    const v1, 0x7f0f005c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isShown()Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLayoutSize()V
    .locals 5

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "layout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 155
    .local v2, "size":I
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 156
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 157
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 162
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->detatchView()V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->enableAutoOffTimer()V

    .line 81
    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 86
    iget v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 87
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mOrientation:I

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->applySensorOrientation()V

    .line 90
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->attatchView()V

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->applySensorOrientation()V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->disableAutoOffTimer()V

    goto :goto_0
.end method
