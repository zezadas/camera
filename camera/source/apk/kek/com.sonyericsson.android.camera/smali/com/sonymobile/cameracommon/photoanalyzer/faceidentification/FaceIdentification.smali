.class public interface abstract Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
.super Ljava/lang/Object;
.source "FaceIdentification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;,
        Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isBusy()Z
.end method

.method public abstract release()V
.end method

.method public abstract request([BIIIILjava/util/List;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIII",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;",
            ")V"
        }
    .end annotation
.end method
