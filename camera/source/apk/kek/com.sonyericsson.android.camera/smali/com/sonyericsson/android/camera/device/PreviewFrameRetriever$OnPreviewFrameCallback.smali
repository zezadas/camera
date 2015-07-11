.class Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;
.super Ljava/lang/Object;
.source "PreviewFrameRetriever.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreviewFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "yuvData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 189
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->access$100(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    .local v4, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->access$100(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 193
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    .line 195
    .local v3, "request":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    iget-boolean v5, v3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;->periodic:Z

    if-nez v5, :cond_0

    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 200
    .end local v3    # "request":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    .line 201
    .local v0, "i":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    iget-object v5, v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;->callback:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-interface {v5, v6, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;->onPreviewFrameAvarable(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;[B)V

    goto :goto_1

    .line 204
    .end local v0    # "i":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->access$100(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 205
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    # invokes: Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->unregisterPreviewCallback()V
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->access$200(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)V

    .line 208
    :cond_3
    return-void
.end method
