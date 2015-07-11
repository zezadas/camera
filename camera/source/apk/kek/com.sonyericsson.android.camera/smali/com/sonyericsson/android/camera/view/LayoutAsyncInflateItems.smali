.class public Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;
.super Ljava/lang/Object;
.source "LayoutAsyncInflateItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    }
.end annotation


# static fields
.field private static final INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;
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
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getItems()Ljava/util/List;
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
    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SPECIFIC_VIEWFIDER_LAYOUT:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->NOTIFICATION:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->CAMERA_INDICATORS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->INFLATE_ITEMS_FOR_LAUNCH:Ljava/util/List;

    return-object v0
.end method
