.class public Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_BUCKETID:I = 0x7

.field private static final COLUMN_INDEX_DATA:I = 0x1

.field private static final COLUMN_INDEX_HEIGHT:I = 0x5

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_MIME:I = 0x2

.field private static final COLUMN_INDEX_ORIENTATION:I = 0x6

.field private static final COLUMN_INDEX_WIDTH:I = 0x4

.field public static final EXTENDED_FILES_COLUMN_ID:Ljava/lang/String; = "files_id"

.field public static final EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CONTENT_EXTENSIONS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

.field private final mIsRegisterCache:Z

.field private mMediaId:I

.field private mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

.field private mRequestId:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->TAG:Ljava/lang/String;

    .line 106
    const-string v0, "content://media/external/extended_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;
    .param p5, "isRegisterCache"    # Z

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".JPG"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ".3gp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ".mp4"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 161
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mRequestId:I

    .line 163
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mMediaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 169
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 170
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mIsRegisterCache:Z

    .line 171
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->TAG:Ljava/lang/String;

    const-string v2, "mediaId is not corrected."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "index"    # I
    .param p4, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;
    .param p5, "isRegisterCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "destinations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".JPG"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mRequestId:I

    .line 143
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 144
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 146
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 147
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mIsRegisterCache:Z

    .line 148
    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 627
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move v3, p2

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 630
    :cond_0
    return-object v5
.end method

.method private createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v13, 0x1

    .line 325
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getMediaId(Landroid/database/Cursor;)I

    move-result v4

    .line 326
    .local v4, "mediaId":I
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "mime":Ljava/lang/String;
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "data":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 329
    .local v10, "width":I
    const/4 v11, 0x5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 330
    .local v2, "height":I
    const/4 v11, 0x7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 334
    .local v0, "bucketId":I
    const-string v11, "image/jpeg"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 335
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 337
    .local v9, "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 357
    .local v8, "type":I
    :goto_0
    if-ne v8, v13, :cond_4

    .line 358
    invoke-direct {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getMpoFilePath(I)Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "mpoPath":Ljava/lang/String;
    :goto_1
    if-ne v8, v13, :cond_5

    .line 365
    const/4 v11, 0x6

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 370
    .local v7, "orientDeg":I
    :goto_2
    new-instance v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    .line 371
    .local v3, "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    iput v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    .line 372
    iput-object v9, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 373
    iput-object v1, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 374
    iput-object v6, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMpoPath:Ljava/lang/String;

    .line 375
    iput v8, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 376
    iput v10, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 377
    iput v2, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 378
    iput v7, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 379
    iput-object v5, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 380
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->isPlayableContent(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPlayable:Z

    .line 381
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getGroupedImageCount(I)I

    move-result v11

    iput v11, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 382
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getSomcType(Ljava/lang/String;)I

    move-result v11

    iput v11, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    .line 383
    iput v0, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 384
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v11

    iput-object v11, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 385
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mThumbnail:Landroid/graphics/Bitmap;

    .line 387
    .end local v3    # "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .end local v6    # "mpoPath":Ljava/lang/String;
    .end local v7    # "orientDeg":I
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :goto_3
    return-object v3

    .line 338
    :cond_0
    const-string v11, "video/mp4"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 339
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 341
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_0

    .line 342
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_1
    const-string v11, "video/3gpp"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 343
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 345
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_0

    .line 346
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_2
    const-string v11, "image/mpo"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 347
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 350
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x3

    .restart local v8    # "type":I
    goto :goto_0

    .line 353
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 360
    .restart local v8    # "type":I
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "mpoPath":Ljava/lang/String;
    goto :goto_1

    .line 367
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "orientDeg":I
    goto :goto_2
.end method

.method private decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 611
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 612
    iget v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    iget v2, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getMediaPath(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 614
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 623
    :cond_1
    return-object v0
.end method

.method private varargs generatePathSelection([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pathSegments"    # [Ljava/lang/String;

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v5, "_data"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v5, " like \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 305
    .local v4, "segments":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 306
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 308
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v4    # "segments":Ljava/lang/String;
    :cond_1
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v5, "_data NOT LIKE \'%/.%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "pathWhere":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "storage":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 277
    .end local v1    # "storage":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "storage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "pathWhere":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 285
    .local v1, "extension":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->generatePathSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "extension":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 3
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    const/16 v2, 0xf00

    .line 559
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 560
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    sparse-switch v0, :sswitch_data_0

    .line 573
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 595
    :goto_0
    return-object v0

    .line 563
    :sswitch_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 567
    :sswitch_1
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 570
    :sswitch_2
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SOUND_PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 576
    :cond_0
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 577
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    packed-switch v0, :pswitch_data_0

    .line 585
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    if-ge v0, v2, :cond_1

    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    if-lt v0, v2, :cond_2

    .line 587
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 579
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 582
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 589
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 595
    :cond_3
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x2a -> :sswitch_2
        0x81 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch

    .line 577
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCoverImageInfo(I)Landroid/database/Cursor;
    .locals 10
    .param p1, "mediaId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 709
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 710
    .local v0, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v9

    const-string v5, "_data"

    aput-object v5, v4, v8

    const-string v5, "mime_type"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "width"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "height"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "bucket_id"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "somctype"

    aput-object v6, v4, v5

    iput-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 717
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s like \'%s\'"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 720
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v1

    .line 722
    .local v1, "result":Landroid/database/Cursor;
    if-nez v1, :cond_0

    move-object v1, v3

    .line 733
    .end local v1    # "result":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 725
    .restart local v1    # "result":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 727
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    .line 728
    goto :goto_0

    .line 731
    :cond_1
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getSomcType(Ljava/lang/String;)I

    move-result v2

    .line 733
    .local v2, "somcType":I
    goto :goto_0
.end method

.method private getGroupedImageCount(I)I
    .locals 9
    .param p1, "bucketId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 414
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 415
    .local v1, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "bucket_id"

    aput-object v4, v3, v7

    iput-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 418
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s DESC, %s DESC"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "datetaken"

    aput-object v6, v5, v7

    const-string v6, "title"

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 420
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "bucket_id"

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 423
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v2

    .line 426
    .local v2, "result":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 434
    :goto_0
    return v0

    .line 431
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 432
    .local v0, "count":I
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getLatestImageInfo()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 689
    .local v0, "queryResult":Landroid/database/Cursor;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 698
    .end local v0    # "queryResult":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 692
    .restart local v0    # "queryResult":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 694
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 695
    goto :goto_0
.end method

.method private getMediaId(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 397
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 401
    .local v0, "mediaId":I
    return v0
.end method

.method private getMediaPath(II)Ljava/lang/String;
    .locals 11
    .param p1, "mediaId"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 635
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 637
    .local v2, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    packed-switch p2, :pswitch_data_0

    .line 676
    :cond_0
    :goto_0
    return-object v4

    .line 640
    :pswitch_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 641
    .local v3, "uri":Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "_data"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 642
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id"

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 644
    iput v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 645
    iput v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 661
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 662
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 667
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 668
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 674
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 649
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 650
    .restart local v3    # "uri":Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "_data"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 651
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id"

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 653
    iput v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 654
    iput v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    goto :goto_1

    .line 674
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->TAG:Ljava/lang/String;

    const-string v6, "The specified column isn\'t found."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMpoFilePath(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 526
    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    .line 527
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 528
    .local v2, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "filelinkpath"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 530
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "files_id"

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 531
    iput v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 532
    iput v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 534
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 549
    :goto_0
    return-object v4

    .line 540
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 546
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->TAG:Ljava/lang/String;

    const-string v6, "The specified column isn\'t found."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private getSomcType(Ljava/lang/String;)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 448
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 449
    .local v0, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v3, v2

    const-string v4, "somctype"

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 453
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s DESC, %s DESC"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "datetaken"

    aput-object v6, v5, v2

    const-string v6, "title"

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 455
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "_data"

    aput-object v6, v5, v2

    aput-object p1, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 457
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v1

    .line 459
    .local v1, "result":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 471
    :goto_0
    return v2

    .line 463
    :cond_0
    const/4 v2, 0x0

    .line 464
    .local v2, "type":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    const-string v3, "somctype"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 468
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private isPlayableContent(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Z
    .locals 5
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    iget v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 515
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 490
    :cond_1
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMpoPath:Ljava/lang/String;

    if-nez v3, :cond_2

    move v1, v2

    .line 492
    goto :goto_0

    .line 495
    :cond_2
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMpoPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->getType(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 515
    goto :goto_0

    .line 500
    :pswitch_1
    iget v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    if-eqz v3, :cond_3

    iget v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    .line 502
    goto :goto_0

    .line 504
    :cond_4
    iget v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    int-to-float v3, v3

    iget v4, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 505
    .local v0, "aspect":F
    const v3, 0x3ff05b06

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_0

    move v1, v2

    .line 511
    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    .locals 10
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;"
        }
    .end annotation

    .prologue
    .local p1, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, "pathWhere":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 229
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 230
    .local v3, "queryParam":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v9

    const-string v5, "_data"

    aput-object v5, v4, v8

    const-string v5, "mime_type"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "width"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "height"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "bucket_id"

    aput-object v6, v4, v5

    iput-object v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 240
    iput p2, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 241
    iput v8, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 242
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s DESC, %s DESC"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "datetaken"

    aput-object v7, v6, v9

    const-string v7, "title"

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "(somctype!=129)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const-string v4, "(somctype!=130)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 260
    if-eqz v1, :cond_0

    .line 261
    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 268
    return-object v3
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 187
    .local v1, "id":I
    const/4 v2, 0x0

    .line 188
    .local v2, "queryResult":Landroid/database/Cursor;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    if-eqz v4, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getLatestImageInfo()Landroid/database/Cursor;

    move-result-object v2

    .line 194
    :goto_0
    const/4 v0, 0x0

    .line 196
    .local v0, "contentInfo":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    if-eqz v2, :cond_0

    .line 200
    :try_start_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    const/4 v3, 0x1

    .line 207
    :cond_0
    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v2, 0x0

    .line 211
    :cond_1
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 213
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    iget v5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mRequestId:I

    iget-boolean v6, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mIsRegisterCache:Z

    invoke-interface {v4, v3, v0, v5, v6}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;->onDataLoaded(ZLcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;IZ)V

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 191
    .end local v0    # "contentInfo":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    :cond_2
    iget v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mMediaId:I

    invoke-direct {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getCoverImageInfo(I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 207
    .restart local v0    # "contentInfo":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 208
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v2, 0x0

    .line 211
    :cond_3
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    throw v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
