.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashIn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method


# virtual methods
.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 4
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
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 164
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    if-ne v0, v3, :cond_0

    .line 165
    new-array v0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f09003b

    return v0
.end method

.method public getParameterKeyTitleTextId()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f0900a2

    return v0
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
    .line 178
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 179
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    goto :goto_0
.end method
