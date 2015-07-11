.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
.super Landroid/os/Handler;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderHander"
.end annotation


# static fields
.field private static final NOTIFY_CONTENT_CREATED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->notifyContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    return-void
.end method

.method private notifyContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 293
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 295
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->sendMessage(Landroid/os/Message;)Z

    .line 297
    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 276
    .local v1, "requestId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 278
    .local v0, "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;I)V

    .line 280
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
