/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;

public interface ConnectionRequestCallback {
    public void onNodeConnected(NetworkNode var1);

    public void onNodeConnectionFailed();
}

