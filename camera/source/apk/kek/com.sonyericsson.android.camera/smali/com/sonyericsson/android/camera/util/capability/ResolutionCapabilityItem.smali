.class public Lcom/sonyericsson/android/camera/util/capability/ResolutionCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "ResolutionCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem",
        "<",
        "Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .prologue
    .line 22
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method getDefaultValue()Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;-><init>()V

    return-object v0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionCapabilityItem;->getDefaultValue()Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    move-result-object v0

    return-object v0
.end method
