.class public abstract Lcom/sonyericsson/cameracommon/status/IntegerValue;
.super Ljava/lang/Object;
.source "IntegerValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# instance fields
.field protected final mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/sonyericsson/cameracommon/status/IntegerValue;->mValue:I

    .line 28
    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sonyericsson/cameracommon/status/IntegerValue;->mValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/IntegerValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/IntegerValue;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    return-void
.end method
