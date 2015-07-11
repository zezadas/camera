.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleNodeConnectionTask;
.super Ljava/lang/Object;
.source "WearableBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleNodeConnectionTask"
.end annotation


# instance fields
.field private final mIsConnected:Z

.field private final mNode:Lcom/google/android/gms/wearable/Node;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;ZLcom/google/android/gms/wearable/Node;)V
    .locals 0
    .param p2, "isConnected"    # Z
    .param p3, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleNodeConnectionTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleNodeConnectionTask;->mIsConnected:Z

    .line 125
    iput-object p3, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleNodeConnectionTask;->mNode:Lcom/google/android/gms/wearable/Node;

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
