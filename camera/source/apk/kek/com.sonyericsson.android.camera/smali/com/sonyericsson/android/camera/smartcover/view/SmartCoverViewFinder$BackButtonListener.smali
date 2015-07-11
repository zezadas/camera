.class Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;
.super Ljava/lang/Object;
.source "SmartCoverViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1099
    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_NOT_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    invoke-static {}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$400()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 1100
    return-void
.end method

.method public onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1105
    return-void
.end method

.method public onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1084
    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    invoke-static {}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$300()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 1085
    return-void
.end method

.method public onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1096
    return-void
.end method

.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1089
    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_NOT_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    invoke-static {}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$400()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 1090
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$500(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->abort()V

    .line 1091
    return-void
.end method
