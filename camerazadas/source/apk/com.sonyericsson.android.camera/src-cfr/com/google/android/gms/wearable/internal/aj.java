/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.d;
import java.util.List;

public final class aj
implements NodeApi {
    @Override
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, final NodeApi.NodeListener nodeListener) {
        return googleApiClient.a(new d<Status>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, nodeListener);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            public Status d(Status status) {
                return new Status(13);
            }
        });
    }

    @Override
    public PendingResult<NodeApi.GetConnectedNodesResult> getConnectedNodes(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new d<NodeApi.GetConnectedNodesResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.q(this);
            }

            protected NodeApi.GetConnectedNodesResult aL(Status status) {
                return new a(status, null);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aL(status);
            }
        });
    }

    @Override
    public PendingResult<NodeApi.GetLocalNodeResult> getLocalNode(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new d<NodeApi.GetLocalNodeResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.p(this);
            }

            protected NodeApi.GetLocalNodeResult aK(Status status) {
                return new b(status, null);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aK(status);
            }
        });
    }

    @Override
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, final NodeApi.NodeListener nodeListener) {
        return googleApiClient.a(new d<Status>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.b(this, nodeListener);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            public Status d(Status status) {
                return new Status(13);
            }
        });
    }

    public static class a
    implements NodeApi.GetConnectedNodesResult {
        private final Status CM;
        private final List<Node> avL;

        public a(Status status, List<Node> list) {
            this.CM = status;
            this.avL = list;
        }

        @Override
        public List<Node> getNodes() {
            return this.avL;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    public static class b
    implements NodeApi.GetLocalNodeResult {
        private final Status CM;
        private final Node avM;

        public b(Status status, Node node) {
            this.CM = status;
            this.avM = node;
        }

        @Override
        public Node getNode() {
            return this.avM;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

}

