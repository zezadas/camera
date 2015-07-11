.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0

    .prologue
    .line 3201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3212
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "## ## ## ## StateVideoBase.handleOnOnePreviewFrameUpdated()"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;-><init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5002(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;)Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .line 3217
    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3208
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 3221
    const/4 v0, 0x1

    return v0
.end method
