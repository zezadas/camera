.class Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRecorderPauseAndResumeSupportStateHolder"
.end annotation


# static fields
.field private static final sIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method private static isSupported()Z
    .locals 7

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "enablePause":Z
    const-class v5, Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 54
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pause"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 56
    const/4 v1, 0x1

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-eqz v1, :cond_2

    .line 63
    const/4 v5, 0x1

    .line 67
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method
