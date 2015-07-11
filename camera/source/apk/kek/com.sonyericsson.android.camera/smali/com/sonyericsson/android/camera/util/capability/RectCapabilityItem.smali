.class public Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "RectCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Rect;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 30
    return-void
.end method


# virtual methods
.method getDefaultValue()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->getDefaultValue()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public parseExtensionValue(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/ExtensionValueParser;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseExtensionValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->parseExtensionValue(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    .line 42
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/SharedPreferences;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 48
    .local v0, "value":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->fromRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    :cond_0
    return-void
.end method
