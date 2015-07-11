.class public Lcom/sonyericsson/cameracommon/utility/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getMountAngle(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 46
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 47
    .local v2, "rotation":I
    const/4 v0, 0x0

    .line 48
    .local v0, "degrees":I
    packed-switch v2, :pswitch_data_0

    .line 65
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 66
    .local v3, "screenSize":Landroid/graphics/Point;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 67
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_0

    const/4 v1, 0x1

    .line 68
    .local v1, "isLandscape":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 71
    .end local v0    # "degrees":I
    :goto_2
    return v0

    .line 50
    .end local v1    # "isLandscape":Z
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .restart local v0    # "degrees":I
    :pswitch_0
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 53
    :pswitch_1
    const/16 v0, 0x10e

    .line 54
    goto :goto_0

    .line 56
    :pswitch_2
    const/16 v0, 0xb4

    .line 57
    goto :goto_0

    .line 59
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 67
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 71
    .restart local v1    # "isLandscape":Z
    :cond_1
    add-int/lit16 v0, v0, 0x10e

    goto :goto_2

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

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
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static shouldReverseZoomDirection(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "landscape"    # Z

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method
