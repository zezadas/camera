.class Lcom/sonyericsson/cameracommon/focusview/NameTag$1;
.super Ljava/lang/Object;
.source "NameTag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/NameTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/NameTag;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/NameTag;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/NameTag$1;->this$0:Lcom/sonyericsson/cameracommon/focusview/NameTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
