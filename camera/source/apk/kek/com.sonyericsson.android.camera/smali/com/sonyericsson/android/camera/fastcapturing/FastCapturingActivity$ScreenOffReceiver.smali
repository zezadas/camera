.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FastCapturingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOffReceiver"


# instance fields
.field private mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0
    .param p1, "act"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .line 284
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 299
    :cond_0
    return-void
.end method
