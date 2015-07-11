.class public Lcom/sonyericsson/android/camera/controller/StateList;
.super Ljava/lang/Object;
.source "StateList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStateList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 24
    return-void
.end method

.method getState(Ljava/lang/Class;)Lcom/sonyericsson/android/camera/controller/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)",
            "Lcom/sonyericsson/android/camera/controller/State;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "state":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/State;

    goto :goto_0
.end method

.method public registerState(Lcom/sonyericsson/android/camera/controller/State;)V
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/android/camera/controller/State;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public unregisterState(Ljava/lang/Class;)V
    .locals 1
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
    .local p1, "state":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateList;->mStateList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-void
.end method
