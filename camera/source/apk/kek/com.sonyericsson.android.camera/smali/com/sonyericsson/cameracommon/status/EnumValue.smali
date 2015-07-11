.class public abstract Lcom/sonyericsson/cameracommon/status/EnumValue;
.super Ljava/lang/Object;
.source "EnumValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/status/CameraStatusValue;"
    }
.end annotation


# instance fields
.field private final mValueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/EnumValue;, "Lcom/sonyericsson/cameracommon/status/EnumValue<TT;>;"
    .local p1, "value":Ljava/lang/Enum;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/EnumValue;->mValueString:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/EnumValue;, "Lcom/sonyericsson/cameracommon/status/EnumValue<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/EnumValue;->mValueString:Ljava/lang/String;

    return-object v0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lcom/sonyericsson/cameracommon/status/EnumValue;, "Lcom/sonyericsson/cameracommon/status/EnumValue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/EnumValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/status/EnumValue;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
