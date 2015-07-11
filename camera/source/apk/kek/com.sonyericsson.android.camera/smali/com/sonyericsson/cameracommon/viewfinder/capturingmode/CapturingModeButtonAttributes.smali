.class public Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
.super Ljava/lang/Object;
.source "CapturingModeButtonAttributes.java"


# instance fields
.field private final mIconId:I

.field private final mName:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->mName:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->mIconId:I

    .line 31
    iput p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->mTextId:I

    .line 32
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->mIconId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->mTextId:I

    return v0
.end method
