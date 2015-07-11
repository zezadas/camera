.class public Lcom/sonyericsson/android/camera/CameraLogToggleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraLogToggleReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraLogToggleReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->setLogForOperators(Z)V

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
