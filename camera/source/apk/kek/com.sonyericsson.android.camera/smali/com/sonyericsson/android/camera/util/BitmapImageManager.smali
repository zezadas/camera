.class public final Lcom/sonyericsson/android/camera/util/BitmapImageManager;
.super Ljava/lang/Object;
.source "BitmapImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapImageManager"


# instance fields
.field private mThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/util/BitmapImageManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/util/BitmapImageManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    return-object v0
.end method

.method private dump()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method private getItem(Landroid/graphics/Bitmap;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 315
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 317
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    .line 319
    .local v1, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->equal(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 324
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    .end local v1    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getItem(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 336
    if-eqz p1, :cond_1

    .line 337
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 338
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    .line 340
    .local v1, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->contains(Landroid/widget/ImageView;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 345
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    .end local v1    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    monitor-enter v2

    .line 211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->getItem(Landroid/graphics/Bitmap;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    move-result-object v0

    .line 212
    .local v0, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->add()V

    .line 218
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->dump()V

    .line 219
    monitor-exit v2

    goto :goto_0

    .end local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 215
    .restart local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    .end local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;-><init>(Lcom/sonyericsson/android/camera/util/BitmapImageManager;Landroid/graphics/Bitmap;)V

    .line 216
    .restart local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public add(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    monitor-enter v2

    .line 233
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->getItem(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    move-result-object v0

    .line 234
    .local v0, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->remove(Landroid/widget/ImageView;)V

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->getItem(Landroid/graphics/Bitmap;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->add(Landroid/widget/ImageView;)V

    .line 244
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->dump()V

    .line 245
    monitor-exit v2

    goto :goto_0

    .end local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 241
    .restart local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    .end local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;-><init>(Lcom/sonyericsson/android/camera/util/BitmapImageManager;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 242
    .restart local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 296
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    .line 300
    .local v1, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->init()V

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 304
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    .end local v1    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    return-void
.end method

.method public remove(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    monitor-enter v2

    .line 261
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->getItem(Landroid/graphics/Bitmap;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    move-result-object v0

    .line 262
    .local v0, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->subtract()V

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->dump()V

    .line 269
    monitor-exit v2

    goto :goto_0

    .end local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 279
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;

    monitor-enter v2

    .line 280
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->getItem(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;

    move-result-object v0

    .line 281
    .local v0, "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->remove(Landroid/widget/ImageView;)V

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->dump()V

    .line 289
    monitor-exit v2

    .line 290
    return-void

    .line 289
    .end local v0    # "item":Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
