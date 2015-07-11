.class Lcom/sonyericsson/android/camera/ExtendedActivity$1;
.super Ljava/lang/Object;
.source "ExtendedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;->postLazyEnableTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$1;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$1;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsTouchEventValid:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->access$302(Lcom/sonyericsson/android/camera/ExtendedActivity;Z)Z

    .line 517
    return-void
.end method
