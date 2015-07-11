.class public Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Result"
.end annotation


# instance fields
.field public final result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field final synthetic this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V
    .locals 0
    .param p2, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 186
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->uri:Landroid/net/Uri;

    .line 187
    return-void
.end method
