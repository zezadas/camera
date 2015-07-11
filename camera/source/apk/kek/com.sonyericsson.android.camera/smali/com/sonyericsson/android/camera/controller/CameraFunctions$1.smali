.class Lcom/sonyericsson/android/camera/controller/CameraFunctions$1;
.super Ljava/lang/Object;
.source "CameraFunctions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/CameraFunctions;->finishDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$1;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$1;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->finish(I)V

    .line 816
    return-void
.end method
