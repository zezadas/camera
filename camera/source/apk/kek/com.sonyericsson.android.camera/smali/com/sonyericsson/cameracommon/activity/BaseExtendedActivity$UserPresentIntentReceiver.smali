.class Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPresentIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    .line 82
    :cond_0
    return-void
.end method
