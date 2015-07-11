.class Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
.super Ljava/lang/Object;
.source "PreviewFrameRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field final callback:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

.field final periodic:Z


# direct methods
.method constructor <init>(ZLcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)V
    .locals 0
    .param p1, "periodic"    # Z
    .param p2, "callback"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;->periodic:Z

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;->callback:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .line 58
    return-void
.end method
