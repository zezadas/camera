.class Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;
.super Ljava/lang/Object;
.source "FrontCameraLocationIndicatorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 176
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->close()V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    # getter for: Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->mCloseListener:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->access$000(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;->onClose(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V

    .line 183
    return-void
.end method
