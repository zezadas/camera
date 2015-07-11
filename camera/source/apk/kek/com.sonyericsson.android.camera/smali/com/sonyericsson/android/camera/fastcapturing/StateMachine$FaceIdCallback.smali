.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$FaceIdCallback;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceIdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0

    .prologue
    .line 6117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$FaceIdCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    .prologue
    .line 6117
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$FaceIdCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    return-void
.end method


# virtual methods
.method public onFaceIdentified(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6120
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$FaceIdCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_FACE_IDENTEFIED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 6121
    return-void
.end method
