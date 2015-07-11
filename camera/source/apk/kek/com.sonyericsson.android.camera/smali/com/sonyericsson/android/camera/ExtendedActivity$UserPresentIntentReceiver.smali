.class Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPresentIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/ExtendedActivity$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera/ExtendedActivity;->mDelayedOnResume:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;->resume()V

    .line 149
    :cond_0
    return-void
.end method
