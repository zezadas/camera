.class public Lcom/sonyericsson/cameracommon/utility/ArraysUtil;
.super Ljava/lang/Object;
.source "ArraysUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ArraysUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ArraysUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static swap([FII)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 24
    aget v0, p0, p2

    .line 25
    .local v0, "tmp":F
    aget v1, p0, p1

    aput v1, p0, p2

    .line 26
    aput v0, p0, p1

    .line 27
    return-void
.end method
