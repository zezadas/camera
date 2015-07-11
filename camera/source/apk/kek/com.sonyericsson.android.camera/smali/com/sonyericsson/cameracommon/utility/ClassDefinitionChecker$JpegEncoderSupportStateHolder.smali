.class Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JpegEncoderSupportStateHolder"
.end annotation


# static fields
.field private static final sIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$JpegEncoderSupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method private static isSupported()Z
    .locals 2

    .prologue
    .line 85
    :try_start_0
    const-string v1, "com.sonymobile.imageprocessor.jpegencoder.JpegEncoder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v1, 0x1

    .line 91
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v1

    .line 88
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method
