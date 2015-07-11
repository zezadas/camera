.class public interface abstract Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
.super Ljava/lang/Object;
.source "CaptureArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureAreaStateListener"
.end annotation


# virtual methods
.method public abstract onCaptureAreaCanceled()V
.end method

.method public abstract onCaptureAreaMoved(Landroid/graphics/Point;)V
.end method

.method public abstract onCaptureAreaReleased(Landroid/graphics/Point;)V
.end method

.method public abstract onCaptureAreaStopped()V
.end method

.method public abstract onCaptureAreaTouched(Landroid/graphics/Point;)V
.end method
