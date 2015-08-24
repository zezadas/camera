/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import java.util.List;

public interface NodeApi {
    public PendingResult<Status> addListener(GoogleApiClient var1, NodeListener var2);

    public PendingResult<GetConnectedNodesResult> getConnectedNodes(GoogleApiClient var1);

    public PendingResult<GetLocalNodeResult> getLocalNode(GoogleApiClient var1);

    public PendingResult<Status> removeListener(GoogleApiClient var1, NodeListener var2);

    public static interface GetConnectedNodesResult
    extends Result {
        public List<Node> getNodes();
    }

    public static interface GetLocalNodeResult
    extends Result {
        public Node getNode();
    }

    public static interface NodeListener {
        public void onPeerConnected(Node var1);

        public void onPeerDisconnected(Node var1);
    }

}

