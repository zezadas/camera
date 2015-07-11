.class Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;
.super Ljava/lang/Object;
.source "BitmapImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/BitmapImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapItem"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapItem"


# instance fields
.field private mImage:Landroid/graphics/Bitmap;

.field private mRefCount:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/BitmapImageManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/util/BitmapImageManager;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->this$0:Lcom/sonyericsson/android/camera/util/BitmapImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mImage:Landroid/graphics/Bitmap;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/util/BitmapImageManager;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;-><init>(Lcom/sonyericsson/android/camera/util/BitmapImageManager;Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method private declared-synchronized clear()V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->init()V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->this$0:Lcom/sonyericsson/android/camera/util/BitmapImageManager;

    # getter for: Lcom/sonyericsson/android/camera/util/BitmapImageManager;->mThumbnails:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager;->access$000(Lcom/sonyericsson/android/camera/util/BitmapImageManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized add()V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 102
    iget v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->add()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Landroid/widget/ImageView;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 181
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 184
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public equal(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "to"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mImage:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mImage:Landroid/graphics/Bitmap;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->subtract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subtract()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 119
    iget v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->mRefCount:I

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/BitmapImageManager$BitmapItem;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
