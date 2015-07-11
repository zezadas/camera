.class public abstract Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;
.source "FocusRectangleWithStateMachine.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;-><init>(Landroid/view/ViewGroup;)V

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract deselect()V
.end method

.method protected abstract hide()V
.end method

.method protected abstract init(Landroid/view/LayoutInflater;[Landroid/view/View;)V
.end method

.method protected abstract onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
.end method

.method protected abstract onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
.end method

.method protected abstract onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
.end method

.method protected abstract resetColor()V
.end method

.method protected abstract select(Landroid/graphics/Rect;Z)V
.end method

.method protected abstract setPosition([Landroid/graphics/Rect;)V
.end method

.method protected setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 49
    return-void
.end method

.method protected abstract setSurfaceSize(IIIZ)V
.end method

.method protected abstract show()V
.end method
