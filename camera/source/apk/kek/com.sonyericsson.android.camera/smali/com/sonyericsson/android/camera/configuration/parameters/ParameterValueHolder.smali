.class public Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
.super Ljava/lang/Object;
.source "ParameterValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;,
        Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;,
        Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "-"

.field public static final NO_VALUE:Ljava/lang/String; = "NO_VALUE"

.field public static final REGULAR_EXPRESSION:Ljava/lang/String; = "@"

.field private static final TAG:Ljava/lang/String; = "ParameterValueHolder"


# instance fields
.field private mChanged:Z

.field private mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>.ParameterState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "defaultValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->onApplied()V

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    return-object p1
.end method

.method private deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 6
    .param p1, "valueStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    const/4 v3, 0x0

    .line 436
    const-string v4, "NO_VALUE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v3

    .line 439
    :cond_1
    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "token":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 443
    const/4 v3, 0x0

    .line 445
    .local v3, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 446
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .line 451
    :catch_1
    move-exception v4

    goto :goto_0

    .line 449
    :catch_2
    move-exception v4

    goto :goto_0

    .line 447
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private getParameterState(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<TT;>.ParameterState;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    const/4 v1, 0x0

    .line 472
    .local v1, "instance":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 473
    .local v2, "state":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v2    # "state":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;>;"
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v3

    goto :goto_0

    .line 488
    :catch_1
    move-exception v3

    goto :goto_0

    .line 486
    :catch_2
    move-exception v3

    goto :goto_0

    .line 484
    :catch_3
    move-exception v3

    goto :goto_0

    .line 482
    :catch_4
    move-exception v3

    goto :goto_0

    .line 480
    :catch_5
    move-exception v3

    goto :goto_0

    .line 478
    :catch_6
    move-exception v3

    goto :goto_0

    .line 476
    :catch_7
    move-exception v3

    goto :goto_0

    .line 474
    :catch_8
    move-exception v3

    goto :goto_0
.end method

.method private serialize(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    if-nez p1, :cond_0

    .line 418
    const-string v0, "NO_VALUE"

    .line 420
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public applyCurrentValue()V
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->applyCurrentValue()V

    .line 130
    return-void
.end method

.method public applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 120
    return-void
.end method

.method public createValueString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 345
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->serialize(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->serialize(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->serialize(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "valueStr":Ljava/lang/String;
    return-object v1
.end method

.method public forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z

    move-result v0

    return v0
.end method

.method public get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public hasChanged()Z
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z

    return v0
.end method

.method public onApplied()V
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z

    .line 177
    return-void
.end method

.method public parseValueString(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 365
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    if-nez p1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z

    if-nez v5, :cond_0

    .line 373
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "token":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 378
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getParameterState(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    move-result-object v3

    .line 380
    .local v3, "state":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    if-eqz v3, :cond_0

    .line 384
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    .line 387
    .local v0, "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    if-eqz v0, :cond_0

    .line 391
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    .line 395
    .local v1, "originalValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    .line 399
    .local v2, "recommendedValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    .line 400
    iget-object v5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 401
    iget-object v5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setOriginalValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 402
    iget-object v5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->reset()Z

    move-result v0

    return v0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 75
    return-void
.end method

.method public setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "[TT;"
    invoke-virtual {p1}, [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 62
    return-void
.end method

.method public updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 149
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->onApplied()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method
