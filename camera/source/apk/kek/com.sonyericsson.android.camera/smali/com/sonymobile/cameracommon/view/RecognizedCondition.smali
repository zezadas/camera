.class public Lcom/sonymobile/cameracommon/view/RecognizedCondition;
.super Ljava/lang/Object;
.source "RecognizedCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;
    }
.end annotation


# instance fields
.field private final mCondition:Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V
    .locals 0
    .param p1, "condition"    # Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;
    .param p2, "iconId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    .line 29
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    .line 30
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    .line 31
    return-void
.end method

.method public static create(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;)Lcom/sonymobile/cameracommon/view/RecognizedCondition;
    .locals 3
    .param p0, "condition"    # Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    .prologue
    const/4 v2, -0x1

    .line 34
    if-nez p0, :cond_0

    .line 35
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V

    .line 52
    :goto_0
    return-object v0

    .line 38
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v0, p0, v2, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V

    goto :goto_0

    .line 40
    :pswitch_0
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v0, p0, v2, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V

    goto :goto_0

    .line 43
    :pswitch_1
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_condition_motion_icn:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V

    goto :goto_0

    .line 46
    :pswitch_2
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_condition_stable_icn:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V

    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_condition_walk_icn:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;II)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCondition()Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return v0
.end method
