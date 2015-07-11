.class interface abstract Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;
.super Ljava/lang/Object;
.source "AutoZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AutoZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ZoomState"
.end annotation


# virtual methods
.method public abstract finishZoom()V
.end method

.method public abstract isZoomAvailable()Z
.end method

.method public abstract prepare()Z
.end method

.method public abstract setZoomStep(I)V
.end method

.method public abstract startZoom(F)V
.end method

.method public abstract startZoomIn()V
.end method

.method public abstract startZoomOut()V
.end method

.method public abstract stopZoom()V
.end method
