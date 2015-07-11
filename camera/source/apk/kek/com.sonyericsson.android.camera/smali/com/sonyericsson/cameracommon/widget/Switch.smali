.class public Lcom/sonyericsson/cameracommon/widget/Switch;
.super Landroid/widget/LinearLayout;
.source "Switch.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final OFF_POSITION:I = 0x0

.field private static final PRESSED_COLOR_FILTER:I = 0x66000000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIsChecked:Z

.field private mIsTouched:Z

.field private mLastDownX:F

.field private mLastDownY:F

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnPosition:I

.field private mSwitchThumbContainer:Landroid/view/ViewGroup;

.field private mSwitchTrack:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private final mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/widget/Switch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    .line 43
    iput v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownX:F

    .line 44
    iput v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownY:F

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 55
    return-void
.end method

.method private changeState(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 134
    .local v0, "changedState":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 135
    .local v2, "diff":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownY:F

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/cameracommon/widget/Switch;->isMotionVertical(FF)Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    iget-boolean v6, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-nez v6, :cond_1

    const/4 v0, 0x1

    .line 156
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eq v6, v0, :cond_3

    .line 157
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updateIcon()V

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->setDefaultPosition()V

    .line 160
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 164
    :goto_1
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownX:F

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/cameracommon/widget/Switch;->getCurrentSliderGripPositionX(FF)I

    move-result v5

    .line 149
    .local v5, "releasedX":I
    add-int/lit8 v1, v5, 0x0

    .line 150
    .local v1, "distToOff":I
    iget v6, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    sub-int v4, v6, v5

    .line 151
    .local v4, "distToOn":I
    if-gt v1, v4, :cond_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "distToOff":I
    .end local v4    # "distToOn":I
    .end local v5    # "releasedX":I
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->setDefaultPosition()V

    goto :goto_1
.end method

.method private getCurrentSliderGripPositionX(FF)I
    .locals 3
    .param p1, "motionEventX"    # F
    .param p2, "lastDownX"    # F

    .prologue
    .line 192
    sub-float v2, p1, p2

    float-to-int v1, v2

    .line 195
    .local v1, "diffX":I
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v2, :cond_1

    .line 196
    iget v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    sub-int v0, v2, v1

    .line 203
    .local v0, "currentX":I
    :goto_0
    if-lez v0, :cond_2

    .line 204
    const/4 v0, 0x0

    .line 209
    :cond_0
    :goto_1
    return v0

    .line 198
    .end local v0    # "currentX":I
    :cond_1
    rsub-int/lit8 v0, v1, 0x0

    .restart local v0    # "currentX":I
    goto :goto_0

    .line 205
    :cond_2
    iget v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    if-ge v0, v2, :cond_0

    .line 206
    iget v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    goto :goto_1
.end method

.method private isMotionVertical(FF)Z
    .locals 3
    .param p1, "motionEventY"    # F
    .param p2, "lastDownY"    # F

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "isMotionVertical":Z
    sub-float v2, p1, p2

    float-to-int v0, v2

    .line 216
    .local v0, "diff":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 220
    :cond_0
    return v1
.end method

.method private setDefaultPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchThumbContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchThumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_track:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_thumb_container:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchThumbContainer:Landroid/view/ViewGroup;

    .line 62
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_category:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    :goto_0
    return v1

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 100
    :pswitch_0
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsTouched:Z

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updateIcon()V

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownX:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownY:F

    :cond_1
    :goto_1
    move v1, v2

    .line 121
    goto :goto_0

    .line 106
    :pswitch_1
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsTouched:Z

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mLastDownX:F

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/cameracommon/widget/Switch;->getCurrentSliderGripPositionX(FF)I

    move-result v0

    .line 108
    .local v0, "draggingX":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchThumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    .line 113
    .end local v0    # "draggingX":I
    :pswitch_2
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsTouched:Z

    if-eqz v3, :cond_1

    .line 114
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsTouched:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/widget/Switch;->changeState(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updateIcon()V

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->setDefaultPosition()V

    .line 73
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 90
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 169
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_dialog_item_switch_bg_on_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    .line 189
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_dialog_item_switch_bg_off_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
