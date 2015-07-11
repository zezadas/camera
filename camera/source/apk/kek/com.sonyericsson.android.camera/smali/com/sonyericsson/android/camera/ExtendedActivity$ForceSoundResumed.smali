.class public Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;
.super Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForceSoundResumed"
.end annotation


# instance fields
.field protected mOrg:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;)V
    .locals 0
    .param p2, "org"    # Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    .line 161
    iput-object p2, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;->mOrg:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    .line 162
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
