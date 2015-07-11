.class public Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;
.super Landroid/widget/RelativeLayout;
.source "CapturingModeButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final INVALID_ID:I = -0x1

.field private static final PRESSED_COLOR_FILTER:I = 0x66000000

.field private static final ROTATE_DEGREE:F = -90.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

.field private mBackgroundView:Landroid/widget/ImageView;

.field protected mHasInvalidResources:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mListener:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

.field private mSensorOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mSensorOrientation:I

    .line 66
    return-void
.end method

.method private createBackground()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    return-object v0
.end method

.method private createIcon()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 118
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 119
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    return-object v0
.end method

.method private getIconBitmapId()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, -0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getIconId()I

    move-result v0

    goto :goto_0
.end method

.method private updateBackground()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "visible":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    if-nez v1, :cond_0

    .line 130
    const/4 v0, 0x4

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_1
    return-void
.end method

.method private updateIcon()V
    .locals 5

    .prologue
    .line 139
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 166
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    if-nez v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getIconBitmapId()I

    move-result v1

    .line 150
    .local v1, "icon":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "description":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getTextId()I

    move-result v2

    .line 155
    .local v2, "textId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_capturing_mode_txt:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateBackground()V

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateIcon()V

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->requestLayout()V

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->invalidate()V

    .line 209
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 223
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 225
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 227
    .local v0, "height":F
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 231
    return-void
.end method

.method public getCurrentCapturingMode()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;->onClickCapturingModeButton(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 259
    const/4 v0, 0x0

    return v0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrentCapturingMode(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateLayout()V

    .line 90
    return-void
.end method

.method public setOnCapturingModeButtonListener(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .line 235
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mSensorOrientation:I

    .line 217
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateLayout()V

    .line 218
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setClickable(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setFocusable(Z)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setOnCapturingModeButtonListener(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->createBackground()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->createIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    .line 79
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateLayout()V

    .line 82
    return-void
.end method
