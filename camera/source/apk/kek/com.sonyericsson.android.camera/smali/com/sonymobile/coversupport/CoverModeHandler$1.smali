.class Lcom/sonymobile/coversupport/CoverModeHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/coversupport/CoverModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/coversupport/CoverModeHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/coversupport/CoverModeHandler;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/coversupport/CoverModeHandler$1;->this$0:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverModeHandler$1;->this$0:Lcom/sonymobile/coversupport/CoverModeHandler;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/coversupport/CoverModeHandler;->setCoverMode(Landroid/content/Intent;Z)V
    invoke-static {v0, p2, v1}, Lcom/sonymobile/coversupport/CoverModeHandler;->access$000(Lcom/sonymobile/coversupport/CoverModeHandler;Landroid/content/Intent;Z)V

    .line 84
    return-void
.end method
