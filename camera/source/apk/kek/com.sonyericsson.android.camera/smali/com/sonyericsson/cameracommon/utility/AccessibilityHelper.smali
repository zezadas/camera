.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;
.super Ljava/lang/Object;
.source "AccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityHelper"

.field private static final sRectForHit:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method private static checkToTouch(Landroid/view/View;II)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 155
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 156
    .local v0, "visible":Z
    if-eqz v0, :cond_0

    .line 191
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x40

    .line 48
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "newTalkingView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private static searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 10
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 93
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    const-string v7, "AccessibilityHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "searchContentDescribedView : Arg is null.[viewGroup = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 132
    :goto_0
    return-object v3

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 102
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 105
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 106
    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_6

    .line 109
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "childView":Landroid/view/View;
    invoke-static {v1, v4, v5}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->checkToTouch(Landroid/view/View;II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 106
    .end local v1    # "childView":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 116
    .restart local v1    # "childView":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 117
    move-object v3, v1

    .line 125
    .end local v1    # "childView":Landroid/view/View;
    .local v3, "searchResult":Landroid/view/View;
    :goto_2
    if-eqz v3, :cond_2

    goto :goto_0

    .line 118
    .end local v3    # "searchResult":Landroid/view/View;
    .restart local v1    # "childView":Landroid/view/View;
    :cond_4
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 120
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "childView":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "searchResult":Landroid/view/View;
    goto :goto_2

    .line 122
    .end local v3    # "searchResult":Landroid/view/View;
    .restart local v1    # "childView":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "searchResult":Landroid/view/View;
    goto :goto_2

    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "searchResult":Landroid/view/View;
    :cond_6
    move-object v3, v6

    .line 132
    goto :goto_0
.end method
