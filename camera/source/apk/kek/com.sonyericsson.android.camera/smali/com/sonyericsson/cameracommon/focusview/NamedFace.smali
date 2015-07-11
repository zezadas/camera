.class public Lcom/sonyericsson/cameracommon/focusview/NamedFace;
.super Ljava/lang/Object;
.source "NamedFace.java"


# instance fields
.field public final mFacePosition:Landroid/graphics/Rect;

.field public final mName:Ljava/lang/String;

.field public final mSmileScore:I

.field public final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "facePosition"    # Landroid/graphics/Rect;
    .param p4, "smileScore"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    .line 23
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    .line 24
    return-void
.end method
