.class public Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;
.super Ljava/lang/Object;
.source "SettingPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonymobile/cameracommon/settingpreference/ParameterApplyerInterface;",
        "U:",
        "Lcom/sonymobile/cameracommon/settingpreference/ParameterSet",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "-"

.field public static final GLOBAL_PREFIX:Ljava/lang/String; = "global"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TU;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    .local p2, "parameters":Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mPrefix:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    .line 35
    return-void
.end method

.method private getSharedPreferenceKey(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .prologue
    .line 93
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringMapToWriteInSP()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .line 103
    .local v2, "key":Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v5, v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    move-result-object v0

    .line 104
    .local v0, "holder":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<*>;"
    invoke-interface {v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->isSelectable(Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->serialize()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 107
    invoke-direct {p0, v2}, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->getSharedPreferenceKey(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    .end local v0    # "holder":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<*>;"
    .end local v2    # "key":Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private isSelectable(Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    .local p1, "parameter":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<*>;"
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->getSelectability()Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->SELECTABLE:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readStringMapToLoad(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .line 119
    .local v2, "key":Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v4, v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    move-result-object v0

    .line 120
    .local v0, "holder":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<*>;"
    invoke-interface {v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->isSelectable(Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-interface {v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->deserialize(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "holder":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<*>;"
    .end local v2    # "key":Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonymobile/cameracommon/settingpreference/ParameterApplyerInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    .local p1, "applyer":Lcom/sonymobile/cameracommon/settingpreference/ParameterApplyerInterface;, "TT;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->apply(Lcom/sonymobile/cameracommon/settingpreference/ParameterApplyerInterface;)V

    .line 43
    return-void
.end method

.method public contains(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .prologue
    .line 62
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .prologue
    .line 46
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->get()Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public getSelectability(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .prologue
    .line 58
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->getSelectability()Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    move-result-object v0

    return-object v0
.end method

.method public options(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .prologue
    .line 54
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->getOptions()[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public parameters()Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    return-object v0
.end method

.method public final restore(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;[Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)V
    .locals 8
    .param p1, "sharedPreference"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p2, "parameters"    # [Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    .prologue
    .line 68
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v3, "keyAndValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 70
    .local v2, "key":Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    invoke-interface {v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    invoke-direct {p0, v2}, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->getSharedPreferenceKey(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 73
    invoke-interface {v2}, Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "key":Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->readStringMapToLoad(Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public set(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V
    .locals 2
    .param p1, "value"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .prologue
    .line 50
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->mParameters:Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;->key()Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterSet;->get(Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;)Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->setWithAutoCast(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V

    .line 51
    return-void
.end method

.method public final store(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V
    .locals 4
    .param p1, "sharedPreference"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .prologue
    .line 84
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;, "Lcom/sonymobile/cameracommon/settingpreference/SettingPreference<TT;TU;>;"
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/settingpreference/SettingPreference;->getStringMapToWriteInSP()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
