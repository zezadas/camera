.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableDialog"


# instance fields
.field private final mAnimationsForLand:I

.field private final mAnimationsForPort:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogWidthForLand:I

.field private mDialogWidthForPort:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mOrientation:I

.field private mScrollableView:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTranslationYForLand:I

.field private mTranslationYForPort:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 170
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 171
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 174
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->WindowAnimationDeviceDefaultDialogLandscape:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    .line 176
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->WindowAnimationDeviceDefaultDialogPortrait:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    .line 178
    return-void
.end method

.method private attachScrollableView()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 272
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "messageView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 282
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .local v2, "scrollableViewContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 292
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 305
    .local v4, "viewParent":Landroid/view/ViewParent;
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 307
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .local v3, "scrollview":Landroid/widget/ScrollView;
    move-object v1, v4

    .line 308
    check-cast v1, Landroid/view/View;

    .line 317
    .local v1, "removeTargetView":Landroid/view/View;
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 318
    invoke-virtual {v3, v2, v9, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    goto :goto_0

    .end local v1    # "removeTargetView":Landroid/view/View;
    .end local v3    # "scrollview":Landroid/widget/ScrollView;
    :cond_2
    move-object v3, v4

    .line 311
    check-cast v3, Landroid/widget/ScrollView;

    .line 312
    .restart local v3    # "scrollview":Landroid/widget/ScrollView;
    move-object v1, v0

    .restart local v1    # "removeTargetView":Landroid/view/View;
    goto :goto_1
.end method

.method private calculateOutValue(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 374
    if-ge p1, p2, :cond_0

    .line 375
    sub-int v0, p1, p2

    .line 382
    .local v0, "outValue":I
    :goto_0
    return v0

    .line 376
    .end local v0    # "outValue":I
    :cond_0
    if-ge p3, p1, :cond_1

    .line 377
    sub-int v0, p1, p3

    .restart local v0    # "outValue":I
    goto :goto_0

    .line 379
    .end local v0    # "outValue":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "outValue":I
    goto :goto_0
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    .line 214
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 215
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 216
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 222
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v1, "displaySize":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 226
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    .line 234
    :goto_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForLand:I

    .line 235
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iget v9, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    sub-int/2addr v8, v9

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForPort:I

    .line 239
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 241
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x1050003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "major":Ljava/lang/String;
    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "minor":Ljava/lang/String;
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v4, v8, v10

    .line 248
    .local v4, "minWidthMajor":F
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v5, v8, v10

    .line 250
    .local v5, "minWidthMinor":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    .line 251
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 262
    .end local v3    # "major":Ljava/lang/String;
    .end local v4    # "minWidthMajor":F
    .end local v5    # "minWidthMinor":F
    .end local v6    # "minor":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->attachScrollableView()V

    .line 263
    return-void

    .line 230
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 231
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 257
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 185
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 189
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 190
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 191
    return-void
.end method

.method private setWindowAnimations(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method

.method private updateLayout(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 333
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 334
    .local v1, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 337
    .local v0, "decorParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 338
    .local v3, "panelView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 343
    .local v2, "panelParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 344
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 349
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 351
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 352
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForPort:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 353
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 357
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 367
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 361
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForLand:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 362
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 364
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 513
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 506
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 499
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown(Landroid/content/DialogInterface;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 419
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 421
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 422
    .local v4, "panelView":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v2

    .line 427
    .local v2, "outX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v3

    .line 431
    .local v3, "outY":I
    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 432
    :cond_0
    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 433
    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 435
    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 436
    .local v1, "newEvent":Landroid/view/MotionEvent;
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 441
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 444
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 447
    .end local v1    # "newEvent":Landroid/view/MotionEvent;
    :cond_4
    return v8
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 394
    .local v1, "decorView":Landroid/view/ViewGroup;
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 399
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->release()V

    .line 404
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 519
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 525
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 537
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 543
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 531
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 461
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 462
    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 559
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 561
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 565
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setViewAsScrollable(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 480
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 490
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->initialize()V

    .line 492
    :cond_0
    return-void
.end method
