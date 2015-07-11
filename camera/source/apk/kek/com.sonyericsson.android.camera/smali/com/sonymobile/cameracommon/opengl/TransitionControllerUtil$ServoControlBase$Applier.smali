.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Applier"
.end annotation


# instance fields
.field protected final mActualCondition:[F

.field private final mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;


# direct methods
.method public constructor <init>(FFFLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;)V
    .locals 2
    .param p1, "actX"    # F
    .param p2, "actY"    # F
    .param p3, "actZ"    # F
    .param p4, "applierStrategy"    # Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    .line 373
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 374
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 375
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 376
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    .line 377
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 5
    .param p1, "renderer"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mApplierStrategy:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->mActualCondition:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ApplierStrategy;->apply(FFFLcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 388
    return-void
.end method
