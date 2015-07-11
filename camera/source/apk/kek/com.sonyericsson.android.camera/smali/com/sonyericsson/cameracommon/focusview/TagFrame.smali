.class public Lcom/sonyericsson/cameracommon/focusview/TagFrame;
.super Landroid/widget/RelativeLayout;
.source "TagFrame.java"


# instance fields
.field private mNameTag:Lcom/sonyericsson/cameracommon/focusview/NameTag;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->mNameTag:Lcom/sonyericsson/cameracommon/focusview/NameTag;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 75
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->tag:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NameTag;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->mNameTag:Lcom/sonyericsson/cameracommon/focusview/NameTag;

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->mNameTag:Lcom/sonyericsson/cameracommon/focusview/NameTag;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setName(Ljava/lang/String;)V

    .line 86
    if-nez p1, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnTagClickListener(Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->mNameTag:Lcom/sonyericsson/cameracommon/focusview/NameTag;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setOnTagClickListener(Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;)V

    .line 113
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->mNameTag:Lcom/sonyericsson/cameracommon/focusview/NameTag;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setVisibility(I)V

    .line 119
    return-void
.end method
