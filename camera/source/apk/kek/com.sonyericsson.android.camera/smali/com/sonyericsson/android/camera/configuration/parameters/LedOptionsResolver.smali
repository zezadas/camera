.class public Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.super Ljava/lang/Object;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# instance fields
.field private mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->sInstance:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 30
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    return-object p1
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->sInstance:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    return-object v0
.end method


# virtual methods
.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    return-object v0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 48
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getParameterKeyTextId()I

    move-result v0

    return v0
.end method

.method public getParameterKeyTitleTextId()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getParameterKeyTitleTextId()I

    move-result v0

    return v0
.end method

.method public getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    return-object v0
.end method
