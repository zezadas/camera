.class public Lcom/sonyericsson/android/camera/controller/ControllerMessage;
.super Ljava/lang/Object;
.source "ControllerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/ControllerMessage$1;
    }
.end annotation


# instance fields
.field public final mArg1:I

.field public final mArg2:Ljava/lang/Object;

.field public final mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

.field public final mExpectedState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;"
        }
    .end annotation
.end field

.field public final mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # Ljava/lang/Object;
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
    .line 31
    .local p5, "expectedState":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 34
    iput p3, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    .line 35
    iput-object p4, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    .line 36
    iput-object p5, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mExpectedState:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method public isAbortEvent()Z
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerMessage$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEvent:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 90
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isRunnable(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "current":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    const/4 v0, 0x1

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mExpectedState:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mExpectedState:Ljava/lang/Class;

    if-eq v1, p1, :cond_0

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, ", EventSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, ", Arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 52
    const-string v1, ", Arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mExpectedState:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 56
    const-string v1, ", ExpectedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mExpectedState:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
