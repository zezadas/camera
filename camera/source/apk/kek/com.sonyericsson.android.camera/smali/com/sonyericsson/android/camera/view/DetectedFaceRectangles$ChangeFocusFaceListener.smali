.class public interface abstract Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;
.super Ljava/lang/Object;
.source "DetectedFaceRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangeFocusFaceListener"
.end annotation


# virtual methods
.method public abstract onChangeFocusFace(Ljava/lang/String;IIII)V
.end method

.method public abstract onFaceRectLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onFaceRectTouchCancel(Landroid/view/MotionEvent;)V
.end method

.method public abstract onFaceRectTouchUp(Landroid/view/MotionEvent;)V
.end method
