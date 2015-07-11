.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchCapturingOnlyEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 916
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v0, :cond_0

    .line 917
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 919
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    goto :goto_0

    .line 923
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturingOnlyEvent;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    goto :goto_0

    .line 917
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
