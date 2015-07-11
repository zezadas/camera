.class public interface abstract Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchActionListener"
.end annotation


# virtual methods
.method public abstract onDoubleCanceled()V
.end method

.method public abstract onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract onDoubleRotated(FF)V
.end method

.method public abstract onDoubleScaled(FFF)V
.end method

.method public abstract onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onOverTripleCanceled()V
.end method

.method public abstract onShowPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onSingleCanceled()V
.end method

.method public abstract onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract onSingleReleased(Landroid/graphics/Point;)V
.end method

.method public abstract onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)V
.end method

.method public abstract onSingleTouched(Landroid/graphics/Point;)V
.end method
