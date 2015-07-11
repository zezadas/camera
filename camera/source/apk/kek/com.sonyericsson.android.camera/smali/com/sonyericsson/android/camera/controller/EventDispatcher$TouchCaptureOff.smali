.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOff;
.super Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchCaptureOff"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOff;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    return-void
.end method
