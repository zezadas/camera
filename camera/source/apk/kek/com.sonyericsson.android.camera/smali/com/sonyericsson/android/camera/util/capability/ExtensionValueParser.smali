.class public Lcom/sonyericsson/android/camera/util/capability/ExtensionValueParser;
.super Ljava/lang/Object;
.source "ExtensionValueParser.java"


# static fields
.field public static final CONNECTOR:Ljava/lang/String; = "x"

.field public static final DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "ExtensionValueParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "booleanValue":Z
    if-eqz p0, :cond_0

    .line 36
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final getInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "intValue":I
    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final getRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "rectValue":Landroid/graphics/Rect;
    if-eqz p0, :cond_0

    .line 60
    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "rectValue":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .restart local v0    # "rectValue":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 64
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "stringListValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 73
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 74
    .local v4, "token":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_0
    return-object v3
.end method
