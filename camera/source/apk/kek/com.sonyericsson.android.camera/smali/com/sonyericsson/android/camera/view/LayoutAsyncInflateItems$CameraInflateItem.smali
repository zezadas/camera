.class public final enum Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
.super Ljava/lang/Enum;
.source "LayoutAsyncInflateItems.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraInflateItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum CAMERA_INDICATORS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum NOTIFICATION:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum SMART_COVER_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum SPECIFIC_VIEWFIDER_LAYOUT:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;


# instance fields
.field protected final mInflateId:I

.field protected final mViewCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x7f030000

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "HEAD_UP_DISPLAY"

    const v2, 0x7f030032

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_SINGLE"

    invoke-direct {v0, v1, v4, v6, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_TOUCH"

    invoke-direct {v0, v1, v8, v6, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FACE"

    const/4 v2, 0x3

    const v3, 0x7f030010

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_OBJECT_TRACKING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FAST_SINGLE"

    const v2, 0x7f030011

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FAST_TOUCH"

    const/4 v2, 0x6

    const v3, 0x7f030011

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FAST_OBJECT_TRACKING"

    const/4 v2, 0x7

    const v3, 0x7f030010

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "SPECIFIC_VIEWFIDER_LAYOUT"

    const/16 v2, 0x8

    const v3, 0x7f03002a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SPECIFIC_VIEWFIDER_LAYOUT:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x9

    const v3, 0x7f030017

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->NOTIFICATION:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "CAMERA_INDICATORS"

    const/16 v2, 0xa

    const v3, 0x7f030005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->CAMERA_INDICATORS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "AUTO_REVIEW"

    const/16 v2, 0xb

    const v3, 0x7f030001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "FAST_CAPTURING_VIEWFINDER_ITEMS"

    const/16 v2, 0xc

    const v3, 0x7f030012

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "SMART_COVER_VIEWFINDER_ITEMS"

    const/16 v2, 0xd

    const v3, 0x7f030029

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SMART_COVER_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SPECIFIC_VIEWFIDER_LAYOUT:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->NOTIFICATION:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->CAMERA_INDICATORS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SMART_COVER_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "inflateId"    # I
    .param p4, "viewCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    .line 74
    iput p4, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    return v0
.end method

.method public getViewCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    return v0
.end method
