.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Unsolved"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method

.method private getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;"
        }
    .end annotation

    .prologue
    .local p2, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 116
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "supportedValue":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "supportedValue":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 124
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "supportedValue":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 126
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    goto :goto_0

    .line 129
    :cond_2
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "supportedValue":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .line 134
    goto :goto_0
.end method


# virtual methods
.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 3

    .prologue
    .line 139
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    .line 143
    .local v0, "resolver":Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    goto :goto_0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
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
            "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    .line 98
    .local v0, "resolver":Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    goto :goto_0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    return v0
.end method

.method public getParameterKeyTitleTextId()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x1

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
    .line 107
    .local p2, "flashMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    .line 108
    .local v0, "resolver":Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    goto :goto_0
.end method
