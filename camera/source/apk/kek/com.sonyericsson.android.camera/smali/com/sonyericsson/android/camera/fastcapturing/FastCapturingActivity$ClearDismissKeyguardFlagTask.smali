.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearDismissKeyguardFlagTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 554
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 555
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 556
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 558
    :cond_0
    return-void
.end method
