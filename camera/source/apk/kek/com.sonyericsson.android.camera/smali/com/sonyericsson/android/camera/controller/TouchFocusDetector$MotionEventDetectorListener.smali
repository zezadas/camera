.class public interface abstract Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;
.super Ljava/lang/Object;
.source "TouchFocusDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionEventDetectorListener"
.end annotation


# virtual methods
.method public abstract onTouchMoveDetected(Landroid/view/MotionEvent;)V
.end method

.method public abstract onTouchStopDetected(II)V
.end method
