.class public Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationFactory;
.super Ljava/lang/Object;
.source "FaceIdentificationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewInstance(Landroid/content/Context;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
