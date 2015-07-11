.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    }
.end annotation


# static fields
.field public static final MAX_CONTENT_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

.field private mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

.field private mClickable:Z

.field private final mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

.field private mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

.field private mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

.field private mOrientation:I

.field private mProgressRequestId:I

.field private final mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

.field private mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field private mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

.field private mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .param p3, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .param p4, "receiver"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 72
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 107
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->contents_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    .line 110
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 113
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    return-object v0
.end method

.method private searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 323
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 329
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_1
    return-object v1

    .line 321
    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addContent(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 212
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_2

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    goto :goto_0

    .line 214
    :cond_2
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_0
.end method

.method public addContentOverlayView(ILandroid/view/View;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 424
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 425
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 430
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 431
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 434
    :cond_1
    return-void
.end method

.method public addContentOverlayView(ILandroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 448
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :cond_0
    return-void
.end method

.method public clearContents()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    .line 391
    return-void
.end method

.method public createClearContentFrame()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 164
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 165
    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    const-string v4, "Activity has already been released at createClearContentFrame."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return v2

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_1

    .line 172
    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    const-string v4, "could not get inflater."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->getNext()I

    move-result v2

    .line 179
    .local v2, "requestId":I
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->content_pallet:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 180
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 182
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-nez v3, :cond_2

    .line 183
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    .line 188
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeViewAt(I)V

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->addView(Landroid/view/View;)V

    .line 192
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iget v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    goto :goto_0
.end method

.method public createContentFrame()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    .line 150
    .local v0, "requestId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    .line 152
    return v0
.end method

.method public disableClick()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 512
    return-void
.end method

.method public enableClick()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 506
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public hideThumbnail()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->hide()V

    .line 265
    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 343
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    const/4 v2, 0x1

    .line 350
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_1
    return v2

    .line 341
    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onAvailableSizeUpdated(J)V
    .locals 0
    .param p1, "available"    # J

    .prologue
    .line 414
    return-void
.end method

.method public onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 361
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->TAG:Ljava/lang/String;

    const-string v2, "Activity has already been released."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result p1

    .line 374
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 375
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->onContentCreated()V

    .line 383
    :cond_3
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mProgressRequestId:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;->onContentCreated()V

    goto :goto_0
.end method

.method public onDestinationToSaveChanged()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 404
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->pause()V

    .line 126
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->release()V

    .line 131
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 135
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 137
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 138
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getReadableStorage()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reload(ILjava/util/List;)V

    .line 236
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public removeContentInfo()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeTopContent()V

    .line 586
    return-void
.end method

.method public removeContentOverlayView(ILandroid/view/View;)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 462
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 463
    .local v2, "progressBar":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 465
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 468
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->removeView(Landroid/view/View;)V

    .line 470
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 471
    .local v1, "progress":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 472
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    .end local v1    # "progress":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public removeEarlyThumbnailView()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getRequestId()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getThumbnailView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentOverlayView(ILandroid/view/View;)V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 527
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->requestLayout()V

    .line 86
    return-void
.end method

.method public setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .prologue
    const/4 v1, 0x0

    .line 556
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .line 558
    if-nez p1, :cond_0

    .line 559
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    goto :goto_0
.end method

.method public setContentCreatedListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;)V
    .locals 0
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    .line 590
    return-void
.end method

.method public setEarlyThumbnailView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 517
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 518
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    .line 274
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    .line 275
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    .line 245
    return-void
.end method

.method public showProgress(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mProgressRequestId:I

    .line 487
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 488
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_0

    .line 489
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, "progress":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 492
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    .end local v1    # "progress":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    :cond_0
    return-void
.end method

.method public startInsertAnimation(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 531
    return-void
.end method

.method public startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 536
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->setRequestId(I)V

    .line 538
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->prepareAnimation()V

    .line 541
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getThumbnailView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContentOverlayView(ILandroid/view/View;)V

    .line 544
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->early_thumbnail_insert:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 546
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 551
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public stopAnimation(Z)V
    .locals 3
    .param p1, "notify"    # Z

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 301
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 302
    if-nez p1, :cond_0

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 305
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 309
    :cond_1
    return-void
.end method

.method public updateSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;)V
    .locals 1
    .param p1, "securityLevel"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->updateSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;)V

    .line 118
    return-void
.end method
