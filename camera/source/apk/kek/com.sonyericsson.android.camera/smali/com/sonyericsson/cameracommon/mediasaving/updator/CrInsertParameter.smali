.class public final Lcom/sonyericsson/cameracommon/mediasaving/updator/CrInsertParameter;
.super Ljava/lang/Object;
.source "CrInsertParameter.java"


# instance fields
.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrInsertParameter;->values:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrInsertParameter;->values:Landroid/content/ContentValues;

    .line 36
    return-void
.end method
