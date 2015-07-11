.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;
.super Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServoControlRotator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator$ApplierStrategyImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "initialX"    # F
    .param p2, "initialY"    # F
    .param p3, "initialZ"    # F

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;-><init>(FFF)V

    .line 447
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator$ApplierStrategyImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator$ApplierStrategyImpl;-><init>(Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    .line 448
    return-void
.end method
