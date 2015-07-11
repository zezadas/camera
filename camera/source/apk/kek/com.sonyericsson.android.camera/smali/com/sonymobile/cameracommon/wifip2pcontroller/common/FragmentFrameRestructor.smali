.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;
.super Ljava/lang/Object;
.source "FragmentFrameRestructor.java"


# instance fields
.field public final denominator:I

.field public final frameId:I

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPayloadSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "frameId"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mTotalPayloadSize:I

    .line 30
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->frameId:I

    .line 31
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->denominator:I

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public addFragment(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;)Z
    .locals 3
    .param p1, "fragment"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;

    .prologue
    .line 53
    iget v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->numerator:I

    .line 54
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mTotalPayloadSize:I

    iget v2, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mTotalPayloadSize:I

    .line 62
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public generateRestructedPayload()[B
    .locals 5

    .prologue
    .line 94
    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mTotalPayloadSize:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;

    .line 96
    .local v1, "eachFragment":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->getPayloadBuffer()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 98
    .end local v1    # "eachFragment":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mTotalPayloadSize:I

    new-array v3, v4, [B

    .line 100
    .local v3, "payloadBuffer":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    return-object v3
.end method

.method public getRestructedPayloadSize()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mTotalPayloadSize:I

    return v0
.end method

.method public isCompleted()Z
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;

    .line 72
    .local v0, "eachFragment":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
    if-nez v0, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 76
    .end local v0    # "eachFragment":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrameRestructor;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    return-void
.end method
