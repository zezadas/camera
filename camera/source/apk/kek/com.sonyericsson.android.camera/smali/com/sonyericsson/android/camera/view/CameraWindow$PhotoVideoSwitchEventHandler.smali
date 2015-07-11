.class public Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoVideoSwitchEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    return-void
.end method

.method public onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 318
    return-void
.end method

.method public onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    return-void
.end method

.method public onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 308
    return-void
.end method

.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x4

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # getter for: Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->sendEmptyMessage(I)Z

    .line 303
    :cond_0
    return-void
.end method
