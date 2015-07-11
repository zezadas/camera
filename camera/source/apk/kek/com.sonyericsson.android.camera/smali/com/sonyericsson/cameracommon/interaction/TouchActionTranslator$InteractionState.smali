.class interface abstract Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "InteractionState"
.end annotation


# virtual methods
.method public abstract handleMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method

.method public abstract handleTouchRotateEvent(FF)V
.end method

.method public abstract handleTouchScaleEvent(FFF)V
.end method
