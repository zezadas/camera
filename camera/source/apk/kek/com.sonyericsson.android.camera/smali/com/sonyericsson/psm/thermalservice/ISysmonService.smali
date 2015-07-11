.class public interface abstract Lcom/sonyericsson/psm/thermalservice/ISysmonService;
.super Ljava/lang/Object;
.source "ISysmonService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/psm/thermalservice/ISysmonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getThermalLevelForCamera()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
