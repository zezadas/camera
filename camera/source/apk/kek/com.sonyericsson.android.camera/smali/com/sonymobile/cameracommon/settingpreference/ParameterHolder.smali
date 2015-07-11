.class public Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;
.super Ljava/lang/Object;
.source "ParameterHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_VALUE:Ljava/lang/String; = "NO_VALUE"

.field public static final REGULAR_EXPRESSION:Ljava/lang/String; = "@"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDefaultValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOptions:[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    .local p1, "defaultValue":Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;, "TT;"
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mDefaultValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .line 29
    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .line 30
    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mOptions:[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .line 31
    sget-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    .line 32
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)V
    .locals 6
    .param p1, "valueStr"    # Ljava/lang/String;

    .prologue
    .line 113
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    const-string v4, "NO_VALUE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "token":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 120
    const/4 v3, 0x0

    .line 122
    .local v3, "value":Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;, "TT;"
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 123
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    :goto_1
    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->set(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v4

    goto :goto_1

    .line 128
    :catch_1
    move-exception v4

    goto :goto_1

    .line 126
    :catch_2
    move-exception v4

    goto :goto_1

    .line 124
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public get()Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    return-object v0
.end method

.method public getKey()Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mDefaultValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;->key()Lcom/sonymobile/cameracommon/settingpreference/ParameterKey;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mOptions:[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    return-object v0
.end method

.method public getSelectability()Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "NO_VALUE"

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    .local p1, "value":Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .line 61
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    sget-object v1, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->setOptions([Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V

    .line 64
    :cond_0
    return-void
.end method

.method public varargs setOptions([Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    .local p1, "options":[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;, "[TT;"
    invoke-virtual {p1}, [Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mOptions:[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .line 40
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mOptions:[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mOptions:[Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 43
    sget-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->FIX:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;->SELECTABLE:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mSelectability:Lcom/sonymobile/cameracommon/settingpreference/SettingSelectability;

    goto :goto_0
.end method

.method setWithAutoCast(Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;)V
    .locals 1
    .param p1, "value"    # Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .prologue
    .line 69
    .local p0, "this":Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;, "Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mDefaultValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/settingpreference/ParameterHolder;->mCurrentValue:Lcom/sonymobile/cameracommon/settingpreference/ParameterValue;

    .line 74
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
