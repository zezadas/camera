.class Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoChapterInserter"
.end annotation


# instance fields
.field private final mOrientaion:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;I)V
    .locals 0
    .param p2, "orientation"    # I

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    iput p2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;->mOrientaion:I

    .line 1994
    return-void
.end method


# virtual methods
.method public onPreviewFrameAvarable(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;[B)V
    .locals 3
    .param p1, "sender"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
    .param p2, "previewData"    # [B

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;->mOrientaion:I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->getPreviewInfo()Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/view/CameraWindow;->addVideoChapter([BILcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V
    invoke-static {v0, p2, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$1200(Lcom/sonyericsson/android/camera/view/CameraWindow;[BILcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V

    .line 2000
    return-void
.end method
