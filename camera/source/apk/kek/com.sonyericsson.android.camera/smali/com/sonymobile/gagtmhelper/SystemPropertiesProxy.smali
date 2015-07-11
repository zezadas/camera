.class final Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;
.super Ljava/lang/Object;
.source "SystemPropertiesProxy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v6, ""

    .line 33
    .local v6, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 35
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v7, "android.os.SystemProperties"

    invoke-virtual {v2, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "SystemProperties":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 43
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-string v7, "get"

    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 46
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 48
    .local v5, "params":[Ljava/lang/Object;
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 55
    :catch_0
    move-exception v7

    goto :goto_0

    .line 53
    :catch_1
    move-exception v7

    goto :goto_0

    .line 51
    :catch_2
    move-exception v7

    goto :goto_0

    .line 49
    :catch_3
    move-exception v7

    goto :goto_0
.end method
