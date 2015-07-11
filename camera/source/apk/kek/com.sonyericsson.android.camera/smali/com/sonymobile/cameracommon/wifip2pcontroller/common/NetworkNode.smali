.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
.super Ljava/lang/Object;
.source "NetworkNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$1;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
    }
.end annotation


# static fields
.field private static final NETWORK_NODE_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

.field private mClientApplicationVersionCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mIpAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mIsGroupOwner:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mMacAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mPublicOpenedStreamSet:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredStreamSet:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mTcpPort:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mUdpPort:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    .line 34
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    .line 49
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    .line 54
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    .line 64
    iput v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    .line 171
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    .line 176
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    .line 181
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    .line 197
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    return p1
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    return p1
.end method

.method static synthetic access$602(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    return p1
.end method

.method static synthetic access$902(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    return p1
.end method

.method public static copy(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 2
    .param p0, "srcNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p1, "dstNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 586
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    iput v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    .line 587
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    iput-object v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    .line 589
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    iput v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    .line 590
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    iput-boolean v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    .line 592
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    .line 593
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    iput v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    .line 594
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    iput v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    .line 596
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    iput-object v0, p1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    .line 605
    return-void
.end method

.method public static decodeFromJson(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 683
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-class v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-static {v2, v3, p0, v1}, Lcom/sonyericsson/cameracommon/utility/Json;->decodeFromJson(DLjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 687
    .local v0, "networkNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    return-object v0
.end method

.method private static getWifiP2pDeviceStatusString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 691
    packed-switch p0, :pswitch_data_0

    .line 703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Un-Expected Status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :pswitch_0
    const-string v0, "AVAILABLE"

    .line 701
    :goto_0
    return-object v0

    .line 695
    :pswitch_1
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 697
    :pswitch_2
    const-string v0, "FAILED"

    goto :goto_0

    .line 699
    :pswitch_3
    const-string v0, "INVITED"

    goto :goto_0

    .line 701
    :pswitch_4
    const-string v0, "UNAVAILABLE"

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static final isSameStreamSet(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "set0":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;>;"
    .local p1, "set1":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;>;"
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 1

    .prologue
    .line 609
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;-><init>()V

    .line 610
    .local v0, "cloned":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->copy(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 611
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->clone()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    return-object v0
.end method

.method public encodeToJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 669
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-class v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-static {v2, v3, p0, v1}, Lcom/sonyericsson/cameracommon/utility/Json;->encodeToJson(DLjava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "jsonString":Ljava/lang/String;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "compare"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 473
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 475
    .local v0, "target":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    iget v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    if-ne v2, v3, :cond_4

    .line 482
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 498
    :cond_3
    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    iget v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    if-eq v2, v3, :cond_5

    .line 538
    :cond_4
    :goto_0
    return v1

    .line 503
    :cond_5
    iget-boolean v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    iget-boolean v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    if-ne v2, v3, :cond_4

    .line 508
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 516
    :cond_7
    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    iget v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    if-ne v2, v3, :cond_4

    .line 521
    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    iget v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    if-ne v2, v3, :cond_4

    .line 526
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->isSameStreamSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->isSameStreamSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equalsWithMacAddress(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Z
    .locals 2
    .param p1, "compare"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 573
    :cond_0
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClientApplicationVersionCode()D
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicOpenedStreamSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredStreams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$1;)V

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    return v0
.end method

.method public getTcpPort()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    return v0
.end method

.method public getUdpPort()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 544
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    if-nez v8, :cond_0

    move v1, v7

    .line 545
    .local v1, "macHash":I
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    if-nez v8, :cond_1

    move v2, v7

    .line 546
    .local v2, "nameHash":I
    :goto_1
    iget-boolean v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    if-nez v8, :cond_2

    move v4, v7

    .line 547
    .local v4, "ownerHash":I
    :goto_2
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    if-nez v8, :cond_3

    move v0, v7

    .line 548
    .local v0, "ipHash":I
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    if-nez v8, :cond_4

    move v3, v7

    .line 550
    .local v3, "openedStreamHash":I
    :goto_4
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    if-nez v8, :cond_5

    move v5, v7

    .line 552
    .local v5, "requiredStreamHash":I
    :goto_5
    const/16 v6, 0x13

    .line 553
    .local v6, "result":I
    add-int/lit16 v6, v1, 0x24d

    .line 554
    mul-int/lit8 v7, v6, 0x1f

    add-int v6, v7, v2

    .line 555
    mul-int/lit8 v7, v6, 0x1f

    iget v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    add-int v6, v7, v8

    .line 556
    mul-int/lit8 v7, v6, 0x1f

    add-int v6, v7, v4

    .line 557
    mul-int/lit8 v7, v6, 0x1f

    add-int v6, v7, v0

    .line 558
    mul-int/lit8 v7, v6, 0x1f

    iget v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    add-int v6, v7, v8

    .line 559
    mul-int/lit8 v7, v6, 0x1f

    iget v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    add-int v6, v7, v8

    .line 560
    mul-int/lit8 v7, v6, 0x1f

    add-int v6, v7, v3

    .line 561
    mul-int/lit8 v7, v6, 0x1f

    add-int v6, v7, v5

    .line 562
    return v6

    .line 544
    .end local v0    # "ipHash":I
    .end local v1    # "macHash":I
    .end local v2    # "nameHash":I
    .end local v3    # "openedStreamHash":I
    .end local v4    # "ownerHash":I
    .end local v5    # "requiredStreamHash":I
    .end local v6    # "result":I
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 545
    .restart local v1    # "macHash":I
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 546
    .restart local v2    # "nameHash":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 547
    .restart local v4    # "ownerHash":I
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 548
    .restart local v0    # "ipHash":I
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->hashCode()I

    move-result v3

    goto :goto_4

    .line 550
    .restart local v3    # "openedStreamHash":I
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->hashCode()I

    move-result v5

    goto :goto_5
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    return v0
.end method

.method public setOnNetworkNodeStateChangedCallback(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v3, "    Client Application Version Code : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v3, "    MAC Address     : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Screen Name     : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Status          : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I

    invoke-static {v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getWifiP2pDeviceStatusString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Group Owner     : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v3, "    IP Address : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    TCP Port   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    UDP Port   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v3, "    Public Open Stream:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;

    .line 646
    .local v1, "eachStream":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
    const-string v3, "        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 649
    .end local v1    # "eachStream":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v3, "        NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_1
    const-string v3, "    Required Stream:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    if-eqz v3, :cond_2

    .line 653
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;

    .line 654
    .restart local v1    # "eachStream":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
    const-string v3, "        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 657
    .end local v1    # "eachStream":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v3, "        NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
