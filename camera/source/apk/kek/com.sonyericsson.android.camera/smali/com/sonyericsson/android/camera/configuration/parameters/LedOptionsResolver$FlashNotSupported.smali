.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashNotSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .locals 1

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method


# virtual methods
.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 3
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
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 205
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    if-ne v0, v1, :cond_0

    .line 206
    new-array v0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 208
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 2
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
    .line 214
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 215
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    goto :goto_0
.end method
