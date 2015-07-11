.class public Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutUtil;
.super Ljava/lang/Object;
.source "MultiFrameLayoutUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSameFrameId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "frameIdA"    # Ljava/lang/String;
    .param p1, "frameIdB"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    .line 28
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
