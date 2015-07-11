.class public Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
.super Landroid/widget/ImageView;
.source "OnScreenButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    }
.end annotation


# static fields
.field public static final EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRotatable:Z

.field private mIsTouched:Z

.field private mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

.field private mOrientation:I

.field private mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private mStaticOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->TAG:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 219
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 55
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 56
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 57
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 58
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setFocusable(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setFocusableInTouchMode(Z)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 66
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 67
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 68
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setFocusable(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setFocusableInTouchMode(Z)V

    .line 71
    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 110
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v1, v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->landscape:I

    .line 112
    .local v1, "res":I
    :goto_0
    if-ne v1, v4, :cond_1

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->description:I

    if-eq v2, v4, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v3, v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    .end local v0    # "description":Ljava/lang/String;
    :goto_2
    return-void

    .line 110
    .end local v1    # "res":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v1, v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->portrait:I

    goto :goto_0

    .line 115
    .restart local v1    # "res":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setImageResource(I)V

    goto :goto_1

    .line 121
    :cond_2
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public changeRotatability(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "isRotatable"    # Z

    .prologue
    .line 225
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 226
    if-nez p2, :cond_0

    .line 227
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 230
    return-void
.end method

.method public clearTouched()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 102
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V

    .line 200
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return v3

    .line 136
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 137
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 145
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 158
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 159
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 169
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 175
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 176
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->update()V

    .line 80
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    goto :goto_0
.end method

.method public setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    goto :goto_0
.end method

.method public setUiOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    if-eqz v0, :cond_0

    .line 92
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 97
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->update()V

    .line 98
    return-void

    .line 94
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    goto :goto_0
.end method
