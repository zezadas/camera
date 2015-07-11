.class public Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
.super Ljava/lang/Object;
.source "ChapterThumbnail.java"


# instance fields
.field public final format:Ljava/lang/Integer;

.field private mOrientation:I

.field public final rect:Landroid/graphics/Rect;

.field public final yuvData:[B


# direct methods
.method public constructor <init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "yuvData"    # [B
    .param p2, "format"    # Ljava/lang/Integer;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->yuvData:[B

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->format:Ljava/lang/Integer;

    .line 28
    iput-object p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->rect:Landroid/graphics/Rect;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->mOrientation:I

    .line 30
    return-void
.end method


# virtual methods
.method public orientation()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->mOrientation:I

    return v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->mOrientation:I

    .line 38
    return-void
.end method
