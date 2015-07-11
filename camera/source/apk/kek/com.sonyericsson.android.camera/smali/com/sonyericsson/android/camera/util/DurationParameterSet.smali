.class public Lcom/sonyericsson/android/camera/util/DurationParameterSet;
.super Ljava/lang/Object;
.source "DurationParameterSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DurationParameterSet"


# instance fields
.field public hour:I

.field public min:I

.field public sec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->hour:I

    .line 26
    iput v0, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->min:I

    .line 28
    iput v0, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->sec:I

    .line 34
    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    .line 44
    div-int/lit16 v0, p1, 0x3e8

    .line 45
    .local v0, "remain":I
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->sec:I

    .line 46
    iget v1, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->sec:I

    sub-int v1, v0, v1

    div-int/lit8 v0, v1, 0x3c

    .line 47
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->min:I

    .line 48
    iget v1, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->min:I

    sub-int v1, v0, v1

    div-int/lit8 v0, v1, 0x3c

    .line 49
    iput v0, p0, Lcom/sonyericsson/android/camera/util/DurationParameterSet;->hour:I

    .line 53
    return-void
.end method
