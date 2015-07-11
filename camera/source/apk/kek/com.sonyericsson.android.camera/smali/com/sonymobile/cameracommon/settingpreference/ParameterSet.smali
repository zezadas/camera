.class public abstract Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;
.super Ljava/lang/Object;
.source "ParameterSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonymobile/cameracommon/settingpreference/ParameterApplyerInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->mHolders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/sonymobile/cameracommon/settingpreference/ParameterApplyerInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;",
            ")",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterSet<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->mHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    return-object v0
.end method

.method public keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterSet<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->mHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected makeHolder(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;",
            ">(TV;)",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterSet<TT;>;"
    .local p1, "initValue":Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;, "TV;"
    new-instance v0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;-><init>(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V

    .line 34
    .local v0, "holder":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TV;>;"
    iget-object v1, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->mHolders:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->getKey()Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method
