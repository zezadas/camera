.class public Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;
.super Ljava/lang/Object;
.source "CameraSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capability/CameraSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;->width:I

    .line 131
    iput p2, p0, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;->height:I

    .line 132
    return-void
.end method

.method synthetic constructor <init>(IILcom/sonyericsson/cameracommon/capability/CameraSensor$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sonyericsson/cameracommon/capability/CameraSensor$1;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/capability/CameraSensor$Size;-><init>(II)V

    return-void
.end method
