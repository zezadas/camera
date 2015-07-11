.class public Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;
.super Ljava/lang/Object;
.source "PreviewFrameRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewInfo"
.end annotation


# instance fields
.field public final format:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->format:I

    .line 46
    iput p2, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    .line 47
    iput p3, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    .line 48
    return-void
.end method
