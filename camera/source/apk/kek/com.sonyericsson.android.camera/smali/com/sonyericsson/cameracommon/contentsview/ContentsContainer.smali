.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;
.super Landroid/widget/LinearLayout;
.source "ContentsContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public cancelRequestHide()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 105
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->cancelRequestHide()V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    return-void
.end method

.method public disableClick()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 80
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    return-void
.end method

.method public enableClick()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 73
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->enableClick()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 91
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setVisibility(I)V

    .line 89
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->requestHide()V

    goto :goto_1

    .line 97
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 65
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->release()V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    .line 68
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "rotationDegree":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 50
    const/16 v1, -0x5a

    .line 53
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method
