.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleDataChangedTask;
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
    name = "HandleDataChangedTask"
.end annotation


# instance fields
.field private final mDataEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "dataEventList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataEvent;>;"
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleDataChangedTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleDataChangedTask;->mDataEventList:Ljava/util/List;

    .line 220
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method
