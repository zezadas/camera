.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/CaptureButtonGestureDetector$OnCaptureButtonGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureButtonGestureListener"
.end annotation


# instance fields
.field private final mDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .prologue
    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;->mDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .line 1381
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;

    .prologue
    .line 1374
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onLongPress()V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$CaptureButtonGestureListener;->mDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendLongPressEvent(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1386
    return-void
.end method
