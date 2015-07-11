.class public interface abstract Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThermalAlertReceiverListener"
.end annotation


# virtual methods
.method public abstract onNotifyThermalNormal()V
.end method

.method public abstract onNotifyThermalWarning()V
.end method

.method public abstract onReachHighTemperature(Z)V
.end method
