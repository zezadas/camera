/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

public interface WifiConnectionStatusCallback {
    public void onConnected();

    public void onConnectionFailed();

    public void onDisconnected();
}

