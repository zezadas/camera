.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostUiInflatedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupAnimations()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 695
    return-void
.end method
