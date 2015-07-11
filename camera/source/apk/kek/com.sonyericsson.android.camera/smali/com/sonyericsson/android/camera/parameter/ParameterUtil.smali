.class public Lcom/sonyericsson/android/camera/parameter/ParameterUtil;
.super Ljava/lang/Object;
.source "ParameterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 162
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->applyCurrentValue()V

    .line 167
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    return-object v1

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0
.end method

.method public static applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 131
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 132
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 133
    return-object p1
.end method

.method public static forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 88
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z

    .line 90
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 92
    :cond_0
    return-object p1
.end method

.method public static getPrimaryValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(TT;TT;[TT;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "target":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p1, "defaultValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p2, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "[TT;"
    move-object v0, p2

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 63
    .local v3, "option":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    if-ne p0, v3, :cond_0

    .line 69
    .end local v3    # "option":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local p0    # "target":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    :goto_1
    return-object p0

    .line 62
    .restart local v3    # "option":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .restart local p0    # "target":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "option":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    move-object p0, p1

    .line 69
    goto :goto_1
.end method

.method public static reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 113
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->reset()Z

    .line 115
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    return-object v1
.end method

.method public static reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 145
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->reset()Z

    .line 147
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 148
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    return-object v1
.end method

.method public static setOptions(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;[TT;)",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "[TT;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 75
    return-object p0
.end method

.method public static unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 98
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 100
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 102
    :cond_0
    return-object p1
.end method

.method public static updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;)",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    .line 23
    .local v1, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "[TT;"
    array-length v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v3

    .line 25
    .local v3, "selectability":Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v3, v4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object p0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    .line 30
    .local v0, "defaultValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    const/4 v4, 0x0

    aget-object v2, v1, v4

    .line 32
    .local v2, "primaryValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v3, v4, :cond_2

    .line 33
    if-eq v0, v2, :cond_0

    .line 35
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v3, v4, :cond_0

    .line 40
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->getPrimaryValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    if-eq v0, v4, :cond_0

    .line 41
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0
.end method
