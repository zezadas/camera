/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import java.util.Set;

public interface NodeStateCallback {
    public void onRemoteNodeSetChanged(Set<NetworkNode> var1, Set<NetworkNode> var2, Set<NetworkNode> var3, Set<NetworkNode> var4);

    public void onThisNodeChanged(NetworkNode var1);
}

