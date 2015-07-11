.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;
.super Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServoControlTranslator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator$ApplierStrategyImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "initialX"    # F
    .param p2, "initialY"    # F
    .param p3, "initialZ"    # F

    .prologue
    .line 418
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;-><init>(FFF)V

    .line 419
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator$ApplierStrategyImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator$ApplierStrategyImpl;-><init>(Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    .line 420
    return-void
.end method
