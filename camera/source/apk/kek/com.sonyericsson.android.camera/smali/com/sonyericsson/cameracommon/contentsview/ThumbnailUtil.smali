.class public Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;
.super Ljava/lang/Object;
.source "ThumbnailUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # [B
    .param p2, "orientationDegree"    # I

    .prologue
    .line 34
    const/4 v5, 0x0

    .line 35
    .local v5, "thumbnailContainer":Landroid/widget/RelativeLayout;
    if-nez p1, :cond_0

    .line 36
    sget-object v9, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v10, "data is null"

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 83
    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .local v6, "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_0
    return-object v6

    .line 41
    .end local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v7, 0x0

    .line 42
    .local v7, "thumbnailImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 43
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail:I

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 45
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->early_thumbnail_image:I

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "thumbnailImage":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 48
    .restart local v7    # "thumbnailImage":Landroid/widget/ImageView;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v3, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 53
    .local v8, "width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 54
    .local v1, "height":I
    if-le v8, v1, :cond_2

    .line 55
    int-to-float v9, v1

    const/high16 v10, 0x42c00000    # 96.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 66
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v9, 0x60

    const/16 v10, 0x60

    invoke-static {v0, v9, v10}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 75
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    :cond_1
    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    move-object v6, v5

    .line 83
    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_0

    .line 58
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_2
    int-to-float v9, v8

    const/high16 v10, 0x42c00000    # 96.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 80
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/widget/RelativeLayout;
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "orientationDegree"    # I

    .prologue
    .line 118
    const/4 v9, 0x0

    .line 119
    .local v9, "thumbnailContainer":Landroid/widget/RelativeLayout;
    if-nez p1, :cond_0

    .line 120
    sget-object v13, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v14, "uri is null"

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 191
    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .local v10, "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_0
    return-object v10

    .line 125
    .end local v10    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v11, 0x0

    .line 126
    .local v11, "thumbnailImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 127
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v13, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail:I

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 129
    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    sget v13, Lcom/sonyericsson/cameracommon/R$id;->early_thumbnail_image:I

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "thumbnailImage":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 132
    .restart local v11    # "thumbnailImage":Landroid/widget/ImageView;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 134
    const/4 v5, 0x0

    .line 136
    .local v5, "iStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 140
    :goto_1
    const/4 v13, 0x0

    invoke-static {v5, v13, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    if-eqz v5, :cond_1

    .line 143
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :cond_1
    :goto_2
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 149
    .local v12, "width":I
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 150
    .local v4, "height":I
    if-le v12, v4, :cond_4

    .line 151
    int-to-float v13, v4

    const/high16 v14, 0x42c00000    # 96.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 159
    :goto_3
    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v13, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 163
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 167
    :goto_4
    const/4 v13, 0x0

    invoke-static {v5, v13, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 169
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    .line 170
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 177
    :cond_2
    :goto_5
    const/16 v13, 0x60

    const/16 v14, 0x60

    invoke-static {v1, v13, v14}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    const/4 v8, 0x0

    .line 182
    .local v8, "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 183
    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 185
    :cond_3
    if-eqz v8, :cond_5

    .line 186
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_6
    move-object v10, v9

    .line 191
    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v10    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_0

    .line 137
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v8    # "result":Landroid/graphics/Bitmap;
    .end local v10    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .end local v12    # "width":I
    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v13, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileNotFoundException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    sget-object v13, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "height":I
    .restart local v12    # "width":I
    :cond_4
    int-to-float v13, v12

    const/high16 v14, 0x42c00000    # 96.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3

    .line 164
    :catch_2
    move-exception v3

    .line 165
    .local v3, "e1":Ljava/io/FileNotFoundException;
    sget-object v13, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileNotFoundException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 172
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "result":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public static rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 88
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 89
    .local v4, "h":I
    move-object v0, p0

    .line 91
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    int-to-float v2, v3

    div-float/2addr v2, v10

    int-to-float v6, v4

    div-float/2addr v6, v10

    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 95
    .local v9, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    move-object v0, v9

    .line 103
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "temp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v8

    .line 99
    .local v8, "exArg":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v8    # "exArg":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 101
    .local v7, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
