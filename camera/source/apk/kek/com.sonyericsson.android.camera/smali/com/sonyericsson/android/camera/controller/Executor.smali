.class public Lcom/sonyericsson/android/camera/controller/Executor;
.super Ljava/lang/Object;
.source "Executor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHandler:Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

.field private static sStateList:Lcom/sonyericsson/android/camera/controller/StateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Executor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canHandleCaptureRequest()Z
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->getState()Lcom/sonyericsson/android/camera/controller/State;

    move-result-object v0

    .line 164
    .local v0, "state":Lcom/sonyericsson/android/camera/controller/State;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/State;->canHandleCaptureRequest()Z

    move-result v1

    .line 167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V
    .locals 1
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    .prologue
    .line 119
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->cancel(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 120
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->clear()V

    .line 116
    return-void
.end method

.method public static clearAutoDispatchEvent()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->clearAutoDispatchEvent()V

    .line 124
    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/Inactive;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/controller/Inactive;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/State;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Executor;->sHandler:Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateList;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/controller/StateList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Executor;->sStateList:Lcom/sonyericsson/android/camera/controller/StateList;

    .line 26
    return-void
.end method

.method private static get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Executor;->sHandler:Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Executor;->sHandler:Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    return-object v0
.end method

.method static isBackKeyValid()Z
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->getState()Lcom/sonyericsson/android/camera/controller/State;

    move-result-object v0

    .line 129
    .local v0, "state":Lcom/sonyericsson/android/camera/controller/State;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/State;->isBackKeyValid()Z

    move-result v1

    .line 132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMenuAvailable()Z
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->getState()Lcom/sonyericsson/android/camera/controller/State;

    move-result-object v0

    .line 150
    .local v0, "state":Lcom/sonyericsson/android/camera/controller/State;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/State;->isMenuAvailable()Z

    move-result v1

    .line 153
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRecording()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-object v2, Lcom/sonyericsson/android/camera/controller/Executor;->sHandler:Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    if-nez v2, :cond_1

    .line 144
    .local v0, "state":Lcom/sonyericsson/android/camera/controller/State;
    :cond_0
    :goto_0
    return v1

    .line 139
    .end local v0    # "state":Lcom/sonyericsson/android/camera/controller/State;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->getState()Lcom/sonyericsson/android/camera/controller/State;

    move-result-object v0

    .line 141
    .restart local v0    # "state":Lcom/sonyericsson/android/camera/controller/State;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/State;->isRecording()Z

    move-result v1

    goto :goto_0
.end method

.method public static postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V
    .locals 3
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    .prologue
    const/4 v2, 0x0

    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 101
    return-void
.end method

.method public static postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V
    .locals 2
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method public static postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 2
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    const/4 v1, 0x0

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/controller/ControllerEvent;",
            "Lcom/sonyericsson/android/camera/controller/ControllerEventSource;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, "expectedState":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 97
    return-void
.end method

.method static registerState(Lcom/sonyericsson/android/camera/controller/State;)V
    .locals 1
    .param p0, "state"    # Lcom/sonyericsson/android/camera/controller/State;

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Executor;->sStateList:Lcom/sonyericsson/android/camera/controller/StateList;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateList;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 37
    return-void
.end method

.method public static sendEmergencyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V
    .locals 1
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    .prologue
    .line 81
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->clear()V

    .line 82
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 83
    return-void
.end method

.method public static sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V
    .locals 3
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    .prologue
    .line 59
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V
    .locals 1
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 2
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V
    .locals 1
    .param p0, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->dispatchEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p0, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iget v2, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method static setState(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "state":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->get()Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/Executor;->sStateList:Lcom/sonyericsson/android/camera/controller/StateList;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateList;->getState(Ljava/lang/Class;)Lcom/sonyericsson/android/camera/controller/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->setState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 41
    return-void
.end method
