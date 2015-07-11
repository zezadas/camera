.class public Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;
.super Ljava/lang/Object;
.source "FastLayoutAsyncInflateItems.java"


# static fields
.field private static final INFLATE_ITEMS_FOR_FAST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInflateItemsForFast()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SMART_COVER_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_FAST:Ljava/util/List;

    return-object v0
.end method
