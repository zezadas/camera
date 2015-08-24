/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;

public interface NetworkStateCallback {
    public void onGroupInfoUpdated(WifiP2pGroup var1);

    public void onNetworkDisabled();

    public void onNetworkEnabled();

    public void onNetworkInfoUpdated(WifiP2pInfo var1);
}

