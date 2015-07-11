.class public abstract Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;
.super Ljava/lang/Object;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ForceSound"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract resume()V
.end method
