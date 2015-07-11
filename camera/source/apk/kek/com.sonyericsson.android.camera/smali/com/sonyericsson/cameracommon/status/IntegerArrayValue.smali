.class public abstract Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;
.super Ljava/lang/Object;
.source "IntegerArrayValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# static fields
.field private static final INLALID_VALUE:Ljava/lang/String; = "N/A"

.field private static final SEPARATOR:C = ','


# instance fields
.field protected final mValues:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 0
    .param p1, "values"    # [I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->mValues:[I

    .line 31
    return-void
.end method

.method private getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->mValues:[I

    array-length v2, v2

    if-lez v2, :cond_2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->mValues:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->mValues:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v2

    :cond_2
    const-string v2, "N/A"

    goto :goto_1
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
