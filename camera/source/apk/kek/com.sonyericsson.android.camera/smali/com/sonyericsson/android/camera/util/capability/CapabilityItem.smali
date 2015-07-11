.class public abstract Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.super Ljava/lang/Object;
.source "CapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 41
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 36
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    .line 38
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->parseExtensionValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method abstract getDefaultValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method parseExtensionValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method write(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 66
    .local p0, "this":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<TT;>;"
    return-void
.end method
