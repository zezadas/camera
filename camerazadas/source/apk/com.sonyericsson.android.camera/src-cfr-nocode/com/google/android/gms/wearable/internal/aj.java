/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.d;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public final class aj
implements NodeApi {
    public aj();

    @Override
    public PendingResult<Status> addListener(GoogleApiClient var1, NodeApi.NodeListener var2);

    @Override
    public PendingResult<NodeApi.GetConnectedNodesResult> getConnectedNodes(GoogleApiClient var1);

    @Override
    public PendingResult<NodeApi.GetLocalNodeResult> getLocalNode(GoogleApiClient var1);

    @Override
    public PendingResult<Status> removeListener(GoogleApiClient var1, NodeApi.NodeListener var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a
    implements NodeApi.GetConnectedNodesResult {
        private final Status CM;
        private final List<Node> avL;

        public a(Status var1, List<Node> var2);

        @Override
        public List<Node> getNodes();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b
    implements NodeApi.GetLocalNodeResult {
        private final Status CM;
        private final Node avM;

        public b(Status var1, Node var2);

        @Override
        public Node getNode();

        @Override
        public Status getStatus();
    }

}

