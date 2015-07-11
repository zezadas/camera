.class Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;
.super Ljava/lang/Object;
.source "FrontCameraLocationIndicatorDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 186
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->close()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    # getter for: Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mCloseListener:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->access$000(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$3;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;->onClose(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method
