.class public Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;,
        Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;,
        Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static isJpegEncoderSupported()Z
    .locals 1

    .prologue
    .line 77
    # getter for: Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;->sIsSupported:Z
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;->access$200()Z

    move-result v0

    return v0
.end method

.method public static isMediaRecorderPauseAndResumeSupported()Z
    .locals 1

    .prologue
    .line 44
    # getter for: Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->sIsSupported:Z
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->access$100()Z

    move-result v0

    return v0
.end method

.method public static isSuperResolutionProcessorSupported()Z
    .locals 1

    .prologue
    .line 24
    # getter for: Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;->sIsSupported:Z
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;->access$000()Z

    move-result v0

    return v0
.end method
