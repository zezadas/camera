.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;
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
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 26
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 28
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 34
    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    const/16 v3, 0x3b

    const/16 v2, 0x9

    .line 44
    div-int/lit16 v0, p1, 0x3e8

    .line 46
    .local v0, "remain":I
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 47
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    sub-int v1, v0, v1

    div-int/lit8 v0, v1, 0x3c

    .line 48
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 49
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    sub-int v1, v0, v1

    div-int/lit8 v0, v1, 0x3c

    .line 50
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 52
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    if-le v1, v2, :cond_0

    .line 53
    iput v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 54
    iput v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 55
    iput v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 60
    :cond_0
    return-void
.end method
