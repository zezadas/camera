.class public Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "IntArrayListCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem",
        "<",
        "Ljava/util/List",
        "<[I>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->getDefaultValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getDefaultValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/SharedPreferences;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->getIntArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 44
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 50
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->fromIntArrayList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    :cond_0
    return-void
.end method
