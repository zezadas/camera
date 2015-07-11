.class public abstract Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.super Landroid/widget/RelativeLayout;
.source "SettingDialog.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;


# instance fields
.field private mCloseAnimation:Landroid/view/animation/Animation;

.field private mIsNested:Z

.field private mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

.field protected mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mIsNested:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->cancelAnimation()V

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 122
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 123
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;->onClosed()V

    .line 136
    :cond_2
    return-void
.end method

.method public getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    return-object v0
.end method

.method public hitTest(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 216
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNested()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mIsNested:Z

    return v0
.end method

.method protected notifyItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 187
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    goto :goto_0
.end method

.method protected notifyItemUpdated(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 196
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 197
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 41
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinatePosition(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public open(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->open(Landroid/view/ViewGroup;Z)V

    .line 82
    return-void
.end method

.method public open(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "isNested"    # Z

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mIsNested:Z

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;->onOpened()V

    .line 100
    :cond_1
    return-void
.end method

.method public abstract setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
.end method

.method public setCloseAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 73
    return-void
.end method

.method public setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V
    .locals 0
    .param p1, "coordinator"    # Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    .line 65
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinateSize(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    .line 184
    return-void
.end method

.method protected startAnimation()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->cancelAnimation()V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected updateSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 3
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "selectedItem"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 205
    return-void
.end method
