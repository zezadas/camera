.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 198
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
