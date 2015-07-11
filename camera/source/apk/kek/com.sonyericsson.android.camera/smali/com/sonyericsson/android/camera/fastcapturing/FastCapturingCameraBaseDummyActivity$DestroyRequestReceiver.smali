.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FastCapturingCameraBaseDummyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DestroyRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity$DestroyRequestReceiver;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraBaseDummyActivity;->finishAll()V

    .line 82
    return-void
.end method
