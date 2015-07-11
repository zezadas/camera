.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;
.super Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;
.source "FastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderTouchActionNonObjectTrackingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V
    .locals 0
    .param p2, "cameraType"    # I

    .prologue
    .line 3173
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .line 3174
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    .line 3175
    return-void
.end method


# virtual methods
.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "holdPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3194
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3199
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 3200
    return-void
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "tapUpPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3189
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 3183
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 3184
    return-void
.end method
