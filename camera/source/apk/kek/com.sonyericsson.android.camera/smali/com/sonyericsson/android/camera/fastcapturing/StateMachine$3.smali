.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0

    .prologue
    .line 5566
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5570
    return-void
.end method
