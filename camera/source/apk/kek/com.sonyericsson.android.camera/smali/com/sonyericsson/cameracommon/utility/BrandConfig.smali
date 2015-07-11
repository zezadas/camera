.class public Lcom/sonyericsson/cameracommon/utility/BrandConfig;
.super Ljava/lang/Object;
.source "BrandConfig.java"


# static fields
.field private static final VERIZON_BRAND:Ljava/lang/String; = "verizon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVerizonBrand()Z
    .locals 2

    .prologue
    .line 18
    const-string v0, "verizon"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
