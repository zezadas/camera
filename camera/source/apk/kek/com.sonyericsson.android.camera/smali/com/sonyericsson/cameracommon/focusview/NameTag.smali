.class public Lcom/sonyericsson/cameracommon/focusview/NameTag;
.super Landroid/widget/TextView;
.source "NameTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;
    }
.end annotation


# static fields
.field private static final BLANK_FOR_IMAGE_WIDTH:Ljava/lang/String; = " "

.field private static final TEXTSIZE_FOR_IMAGE_HEIGHT:I = 0xc

.field private static final TEXTSIZE_NORMAL:I = 0xc


# instance fields
.field private mListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

.field private mName:Ljava/lang/String;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/NameTag;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/NameTag;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/NameTag;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 122
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 135
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;->onTagClick(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x41400000    # 12.0f

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mName:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setTextSize(F)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->invalidate()V

    .line 171
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setVisibility(I)V

    .line 165
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setTextSize(F)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/NameTag;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOnTagClickListener(Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag;->mListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    .line 190
    return-void
.end method
