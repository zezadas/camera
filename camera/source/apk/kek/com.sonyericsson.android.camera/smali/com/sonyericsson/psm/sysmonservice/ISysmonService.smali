.class public interface abstract Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
.super Ljava/lang/Object;
.source "ISysmonService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCameraLowTempBurnTimeoutSec()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getThermalLevelForCamera()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getThermalLevelForFs1seg()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
