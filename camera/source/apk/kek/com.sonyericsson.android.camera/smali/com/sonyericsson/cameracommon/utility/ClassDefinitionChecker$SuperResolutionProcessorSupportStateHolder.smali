.class Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperResolutionProcessorSupportStateHolder"
.end annotation


# static fields
.field private static final sIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$SuperResolutionProcessorSupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method private static isSupported()Z
    .locals 2

    .prologue
    .line 32
    :try_start_0
    const-string v1, "com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v1, 0x1

    .line 38
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v1

    .line 35
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method
