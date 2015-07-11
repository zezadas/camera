.class Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$202(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->search()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$302(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$202(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z

    .line 181
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$302(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z

    goto :goto_0
.end method
