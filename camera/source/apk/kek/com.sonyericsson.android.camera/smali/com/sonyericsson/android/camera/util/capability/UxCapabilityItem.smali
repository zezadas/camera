.class public Lcom/sonyericsson/android/camera/util/capability/UxCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "UxCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem",
        "<",
        "Lcom/sonyericsson/android/camera/util/capability/UxOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/util/capability/UxOptions;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/util/capability/UxOptions;

    .prologue
    .line 20
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method getDefaultValue()Lcom/sonyericsson/android/camera/util/capability/UxOptions;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/capability/UxOptions;-><init>()V

    return-object v0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/UxCapabilityItem;->getDefaultValue()Lcom/sonyericsson/android/camera/util/capability/UxOptions;

    move-result-object v0

    return-object v0
.end method
