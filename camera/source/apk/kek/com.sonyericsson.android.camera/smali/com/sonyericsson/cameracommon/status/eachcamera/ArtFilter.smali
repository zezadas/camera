.class public Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "ArtFilter.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

.field public static final KEY:Ljava/lang/String; = "art_filter"

.field private static final REQUIRED_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "art_filter"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
