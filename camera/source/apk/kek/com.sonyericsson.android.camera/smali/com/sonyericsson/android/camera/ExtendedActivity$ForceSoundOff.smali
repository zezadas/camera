.class public Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;
.super Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForceSoundOff"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;)V

    iput-object v1, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/ExtendedActivity;->onActivated(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->access$200(Lcom/sonyericsson/android/camera/ExtendedActivity;Z)V

    .line 233
    return-void
.end method
