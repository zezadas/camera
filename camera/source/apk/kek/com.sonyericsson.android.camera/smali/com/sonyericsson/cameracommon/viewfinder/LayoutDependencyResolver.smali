.class public Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;
.super Ljava/lang/Object;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;,
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    }
.end annotation


# static fields
.field private static final SYSTEM_UI_VISIBILITY_EXTENSIONS:Ljava/lang/String; = "com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS"

.field private static final TAG:Ljava/lang/String;

.field private static VIEWFINDER_ASPECT_RATIO:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->TAG:Ljava/lang/String;

    .line 45
    const v0, 0x3fe38e39

    sput v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;
    .locals 7
    .param p0, "size"    # Landroid/graphics/Point;
    .param p1, "aspectWidthPerHeight"    # F

    .prologue
    const/4 v6, 0x0

    .line 130
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v0, v2

    .line 131
    .local v0, "longSideLength":F
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    .line 132
    .local v1, "shortSideLength":F
    div-float v2, v0, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    div-float v4, v0, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    mul-float v3, v1, p1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    .line 66
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isAvailableSystemUiVisibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_ASSIGNED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    goto :goto_0
.end method

.method public static getLeftItemCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$integer;->shortcut_icon_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previewAspectRatio"    # F

    .prologue
    const/4 v5, 0x0

    .line 152
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 153
    .local v1, "viewFinderSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 156
    .local v0, "viewFinderAspectRatio":F
    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    .line 159
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static getSystemBarMargin(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupDummySystemBar():[Unexpected system bar status.]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->navigationbar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 99
    .local v0, "appDisplaySize":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v1, "realDisplaySize":Landroid/graphics/Point;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 101
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 103
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 124
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setupDummySystemBar():[Unexpected system bar status.]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :pswitch_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    sget v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    invoke-static {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v3

    .line 121
    :goto_0
    return-object v3

    .line 114
    :cond_0
    sget v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0

    .line 121
    :pswitch_1
    sget v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    invoke-static {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static isAvailableSystemUiVisibility(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    const-string v0, "com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static requestToDimSystemUi(Landroid/view/View;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 227
    if-nez p0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 267
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-virtual {p0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 244
    :pswitch_2
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v2

    .line 245
    .local v2, "systemUi":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 247
    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSystemUiVisibility(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 250
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-gt v3, v4, :cond_1

    .line 251
    invoke-virtual {v2, v5}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 253
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSuppressNavigationBar(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 262
    :goto_2
    invoke-virtual {v2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 257
    .local v0, "curAct":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 258
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 259
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static requestToRecoverSystemUi(Landroid/view/View;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 272
    if-nez p0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 277
    :cond_0
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 311
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v2

    .line 289
    .local v2, "systemUi":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSystemUiVisibility(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 293
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-gt v3, v4, :cond_1

    .line 294
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 296
    invoke-virtual {v2, v5}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 297
    invoke-virtual {v2, v5}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSuppressNavigationBar(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 306
    :goto_2
    invoke-virtual {v2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    goto :goto_1

    .line 300
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 301
    .local v0, "curAct":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 302
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 303
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x8000001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 304
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static requestToRemoveSystemUi(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 194
    if-nez p0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v0

    .line 212
    .local v0, "systemUi":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_1

    .line 213
    invoke-virtual {v0, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSuppressNavigationBar(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 217
    :goto_2
    invoke-virtual {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    goto :goto_1

    .line 215
    :cond_1
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setSuppressNavigationBar(Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;Z)V

    goto :goto_2

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 180
    .local v1, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 182
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 183
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRightContainer(Landroid/app/Activity;)V

    .line 186
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupCaptureMethodIndicatorContainer(Landroid/app/Activity;)V

    .line 187
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupSettingIndicatorContainer(Landroid/app/Activity;)V

    .line 188
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupSystemBarMargin(Landroid/app/Activity;)V

    .line 189
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;)V

    .line 190
    return-void
.end method

.method private static setSuppressNavigationBar(Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;Z)V
    .locals 2
    .param p0, "systemUi"    # Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .param p1, "suppress"    # Z

    .prologue
    .line 420
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 421
    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 422
    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 423
    return-void
.end method

.method private static setupCaptureMethodIndicatorContainer(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 390
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->capture_method_indicator_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    return-void
.end method

.method private static setupModeIndicatorContainer(Landroid/app/Activity;)V
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->capturing_mode_selector_button_item_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 402
    .local v1, "modeIconSize":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 404
    .local v3, "shortcutIconHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 407
    .local v0, "containerWidth":I
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->mode_indicator_container:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 409
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 410
    sub-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 412
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 414
    return-void
.end method

.method private static setupRightContainer(Landroid/app/Activity;)V
    .locals 8
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 318
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    .line 319
    .local v4, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 321
    .local v1, "shortcutIconHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 324
    .local v2, "shortcutIconHeightPadding":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v6

    div-int/2addr v5, v6

    sub-int/2addr v5, v1

    add-int/2addr v5, v2

    div-int/lit8 v3, v5, 0x2

    .line 326
    .local v3, "topMargin":I
    move v0, v3

    .line 327
    .local v0, "bottomMargin":I
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7, v3, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 329
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupModeIndicatorContainer(Landroid/app/Activity;)V

    .line 330
    return-void
.end method

.method public static setupRotatableToast(Landroid/app/Activity;)V
    .locals 15
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 334
    .local v6, "metrix":Landroid/util/DisplayMetrics;
    iget v11, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 335
    .local v1, "displayWidth":I
    iget v11, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 337
    .local v0, "displayHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->left_container_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 339
    .local v5, "leftMargin":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v12

    add-int v9, v11, v12

    .line 342
    .local v9, "rightMargin":I
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 343
    .local v2, "finderRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int v12, v0, v12

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 344
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v12

    div-int v10, v11, v12

    .line 347
    .local v10, "toastHeight":I
    new-instance v4, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v10

    invoke-direct {v4, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    .local v4, "landscapeTop":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 359
    .local v3, "landscapeBottom":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v5

    add-int/2addr v13, v10

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 364
    .local v8, "portraitTop":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v10

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    .local v7, "portraitBottom":Landroid/graphics/Rect;
    new-instance v11, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v11, v1, v0, v4, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v12, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v12, v1, v0, v8, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V

    .line 373
    return-void
.end method

.method private static setupSettingIndicatorContainer(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 395
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->setting_indicator_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    return-void
.end method

.method private static setupSystemBarMargin(Landroid/app/Activity;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 376
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->icons:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "iconContainer":Landroid/view/View;
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 379
    .local v2, "uiComponentsContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v1

    .line 380
    .local v1, "navigationBarWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 384
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 386
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 387
    return-void
.end method
