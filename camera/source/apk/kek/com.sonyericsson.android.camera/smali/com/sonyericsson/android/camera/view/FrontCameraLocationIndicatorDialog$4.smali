.class Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;
.super Ljava/lang/Object;
.source "FrontCameraLocationIndicatorDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->close()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    # getter for: Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mCloseListener:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->access$000(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$4;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;->onClose(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
