.class public abstract Lcom/sonyericsson/cameracommon/review/ReviewScreen;
.super Landroid/widget/FrameLayout;
.source "ReviewScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutoReviewRight:Landroid/view/View;

.field protected mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDisplayOrientation:I

.field protected mHasMpo:Z

.field protected mMime:Ljava/lang/String;

.field private mOrientedPictureSize:Landroid/graphics/Rect;

.field protected mPictureImage:Landroid/widget/ImageView;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 66
    return-void
.end method

.method private rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 386
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 387
    .local v4, "h":I
    move-object v0, p1

    .line 388
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 389
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v2, p2

    int-to-float v6, v3

    div-float/2addr v6, v9

    int-to-float v8, v4

    div-float/2addr v8, v9

    invoke-virtual {v5, v2, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move v2, v1

    move v6, v1

    .line 391
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 392
    .local v7, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    move-object v0, v7

    .line 395
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "temp":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method private setVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    const/4 v2, 0x0

    .line 291
    .local v2, "visibility":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 293
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setVisibility(I)V

    goto :goto_1

    .line 288
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "visibility":I
    :cond_0
    const/4 v2, 0x4

    .restart local v2    # "visibility":I
    goto :goto_0

    .line 296
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "image/jpeg"

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 298
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisiblePlayIcon(Z)V

    .line 300
    :cond_3
    return-void
.end method

.method private setVisiblePlayIcon(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 280
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setVisibility(I)V

    .line 281
    return-void

    .line 277
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    .restart local v0    # "visibility":I
    goto :goto_0
.end method


# virtual methods
.method abstract backToViewFinder()V
.end method

.method protected cancelDialog()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 352
    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    return-void
.end method

.method abstract getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
.end method

.method abstract getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hideScreen()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisible(Z)V

    .line 266
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_picture_image:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    .line 77
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    .line 80
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_play:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 81
    .local v2, "playIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_view:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 85
    .local v4, "viewIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 89
    .local v1, "editIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_share:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 93
    .local v3, "shareIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_delete:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 97
    .local v0, "deleteIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_right:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/view/View;

    .line 101
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 103
    return-void
.end method

.method protected setCurrentDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->cancelDialog()V

    .line 357
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 358
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 306
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    .line 308
    .local v1, "degree":F
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 309
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setRotation(F)V

    goto :goto_0

    .line 311
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_0
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mHasMpo:Z

    .line 367
    return-void
.end method

.method public setUri(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "hasMpo"    # Z

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 371
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mHasMpo:Z

    .line 372
    return-void
.end method

.method public setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZ)Z
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageData"    # [B
    .param p4, "videoPath"    # Ljava/lang/String;
    .param p5, "mime"    # Ljava/lang/String;
    .param p6, "pictureRect"    # Landroid/graphics/Rect;
    .param p7, "reviewOrientation"    # I
    .param p8, "pictureOrientation"    # I
    .param p9, "isFront"    # Z

    .prologue
    .line 125
    const/16 v9, 0x5a

    move/from16 v0, p7

    if-eq v0, v9, :cond_0

    const/16 v9, 0x10e

    move/from16 v0, p7

    if-ne v0, v9, :cond_3

    :cond_0
    iget v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 129
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 130
    .local v2, "aspectRatio":F
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    .line 131
    .local v8, "viewfinderRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v2

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .end local v8    # "viewfinderRect":Landroid/graphics/Rect;
    .local v7, "surfaceRect":Landroid/graphics/Rect;
    :goto_0
    if-eqz p7, :cond_1

    const/16 v9, 0xb4

    move/from16 v0, p7

    if-ne v0, v9, :cond_4

    .line 138
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 142
    :goto_1
    iget v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->updatePictureImageLayout(ILandroid/graphics/Rect;)V

    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, "rotation":I
    const-string v9, "video/mp4"

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "video/3gpp"

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 148
    :cond_2
    if-eqz p2, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 154
    .local v3, "orgImage":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p9, :cond_6

    .line 155
    sparse-switch p8, :sswitch_data_0

    .line 170
    const/4 v5, 0x0

    .line 195
    :goto_3
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    sget v10, Lcom/sonyericsson/cameracommon/R$drawable;->cam_video_preview_edit_icn:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    :goto_4
    if-nez v3, :cond_a

    .line 228
    sget-object v9, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->TAG:Ljava/lang/String;

    const-string v10, "Cannot create the image."

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v9, 0x0

    .line 253
    :goto_5
    return v9

    .line 134
    .end local v2    # "aspectRatio":F
    .end local v3    # "orgImage":Landroid/graphics/Bitmap;
    .end local v5    # "rotation":I
    .end local v7    # "surfaceRect":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 135
    .restart local v2    # "aspectRatio":F
    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v7

    .restart local v7    # "surfaceRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 140
    :cond_4
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    goto :goto_1

    .line 151
    .restart local v5    # "rotation":I
    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "orgImage":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 158
    :sswitch_0
    const/16 v5, 0x5a

    .line 159
    goto :goto_3

    .line 162
    :sswitch_1
    const/16 v5, 0xb4

    .line 163
    goto :goto_3

    .line 166
    :sswitch_2
    const/16 v5, 0x10e

    .line 167
    goto :goto_3

    .line 174
    :cond_6
    sparse-switch p8, :sswitch_data_1

    .line 189
    const/4 v5, 0x0

    goto :goto_3

    .line 177
    :sswitch_3
    const/16 v5, -0x5a

    .line 178
    goto :goto_3

    .line 181
    :sswitch_4
    const/16 v5, -0xb4

    .line 182
    goto :goto_3

    .line 185
    :sswitch_5
    const/16 v5, -0x10e

    .line 186
    goto :goto_3

    .line 199
    .end local v3    # "orgImage":Landroid/graphics/Bitmap;
    :cond_7
    if-eqz p2, :cond_9

    .line 200
    new-instance v9, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-direct {v9, v10, v0, v1}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 205
    .restart local v3    # "orgImage":Landroid/graphics/Bitmap;
    :goto_6
    if-eqz p9, :cond_8

    .line 206
    sparse-switch p8, :sswitch_data_2

    .line 217
    const/4 v5, 0x0

    .line 223
    :cond_8
    :goto_7
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    sget v10, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_preview_edit_icn:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 202
    .end local v3    # "orgImage":Landroid/graphics/Bitmap;
    :cond_9
    new-instance v9, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-direct {v9, v10, v0, v1}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "orgImage":Landroid/graphics/Bitmap;
    goto :goto_6

    .line 209
    :sswitch_6
    const/16 v5, 0xb4

    .line 210
    goto :goto_7

    .line 213
    :sswitch_7
    const/16 v5, 0xb4

    .line 214
    goto :goto_7

    .line 232
    :cond_a
    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    .line 233
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 234
    .local v4, "rotateImage":Landroid/graphics/Bitmap;
    move-object v3, v4

    .line 237
    .end local v4    # "rotateImage":Landroid/graphics/Bitmap;
    :cond_b
    if-nez v3, :cond_c

    .line 238
    sget-object v9, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->TAG:Ljava/lang/String;

    const-string v10, "Cannot rotate the image."

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 242
    :cond_c
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v3, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 247
    .local v6, "scaledImage":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 251
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mHasMpo:Z

    .line 252
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    .line 253
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 174
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch

    .line 206
    :sswitch_data_2
    .sparse-switch
        0x5a -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public showRightIcons(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showScreen()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisible(Z)V

    .line 260
    return-void
.end method

.method public updatePictureImageLayout(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayOrientation"    # I
    .param p2, "pictureSize"    # Landroid/graphics/Rect;

    .prologue
    const/16 v3, 0x11

    .line 314
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 316
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 318
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 319
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 321
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void

    .line 323
    :cond_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 328
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 330
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 332
    :cond_2
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
