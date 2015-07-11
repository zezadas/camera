.class public interface abstract Lcom/sonymobile/cameracommon/multiframerenderer/MultiFramePresenter;
.super Ljava/lang/Object;
.source "MultiFramePresenter.java"


# virtual methods
.method public abstract addFrameId(Ljava/lang/String;)V
.end method

.method public abstract deleteFrameId(Ljava/lang/String;)V
.end method

.method public abstract endAdjustLayout(Z)V
.end method

.method public abstract getFrameIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchActionListener()Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract release()V
.end method

.method public abstract startAdjustLayout(Z)V
.end method

.method public abstract swapSortOrder(Ljava/lang/String;Ljava/lang/String;)V
.end method
