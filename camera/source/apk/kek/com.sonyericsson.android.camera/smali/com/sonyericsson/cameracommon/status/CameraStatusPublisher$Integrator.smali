.class public Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;
.super Ljava/lang/Object;
.source "CameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Integrator"
.end annotation


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;->mContentValues:Landroid/content/ContentValues;

    .line 132
    return-void
.end method


# virtual methods
.method public integrate(Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusValue;",
            ">(",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
            "<TU;>;)",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "other":Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;, "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<TU;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;->mContentValues:Landroid/content/ContentValues;

    # getter for: Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->access$000(Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 137
    return-object p0
.end method

.method public publish()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$Integrator;->mContentValues:Landroid/content/ContentValues;

    # invokes: Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish(Landroid/content/Context;Landroid/content/ContentValues;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->access$100(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 142
    return-void
.end method
