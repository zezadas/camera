.class public final Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;
.super Ljava/lang/Object;
.source "CrUpdateParameter.java"


# instance fields
.field public selectionArgs:[Ljava/lang/String;

.field public values:Landroid/content/ContentValues;

.field public where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->values:Landroid/content/ContentValues;

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->where:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->values:Landroid/content/ContentValues;

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->where:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    .line 42
    return-void
.end method
