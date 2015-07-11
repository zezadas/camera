.class Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$1;
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
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
