.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask$1;->this$1:Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask$1;->this$1:Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->abort()V

    .line 529
    return-void
.end method
