/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.internal.GetMetadataRequest;
import com.google.android.gms.drive.internal.ListParentsRequest;
import com.google.android.gms.drive.internal.OnListParentsResponse;
import com.google.android.gms.drive.internal.OnMetadataResponse;
import com.google.android.gms.drive.internal.SetResourceParentsRequest;
import com.google.android.gms.drive.internal.UpdateMetadataRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.bb;
import com.google.android.gms.drive.internal.l;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public class w
implements DriveResource {
    protected final DriveId MW;

    protected w(DriveId driveId) {
        this.MW = driveId;
    }

    @Override
    public PendingResult<Status> addChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener) {
        return ((q)googleApiClient.a(Drive.CU)).a(googleApiClient, this.MW, 1, changeListener);
    }

    @Override
    public PendingResult<Status> addChangeListener(GoogleApiClient googleApiClient, DriveEvent.Listener<ChangeEvent> listener) {
        return ((q)googleApiClient.a(Drive.CU)).a(googleApiClient, this.MW, 1, listener);
    }

    @Override
    public PendingResult<Status> addChangeSubscription(GoogleApiClient googleApiClient) {
        return ((q)googleApiClient.a(Drive.CU)).a(googleApiClient, this.MW, 1);
    }

    @Override
    public DriveId getDriveId() {
        return this.MW;
    }

    @Override
    public PendingResult<DriveResource.MetadataResult> getMetadata(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new d(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new GetMetadataRequest(w.this.MW), (ac)new b(this));
            }
        });
    }

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> listParents(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new o.i(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new ListParentsRequest(w.this.MW), (ac)new a(this));
            }
        });
    }

    @Override
    public PendingResult<Status> removeChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener) {
        return ((q)googleApiClient.a(Drive.CU)).b(googleApiClient, this.MW, 1, changeListener);
    }

    @Override
    public PendingResult<Status> removeChangeListener(GoogleApiClient googleApiClient, DriveEvent.Listener<ChangeEvent> listener) {
        return ((q)googleApiClient.a(Drive.CU)).b(googleApiClient, this.MW, 1, listener);
    }

    @Override
    public PendingResult<Status> removeChangeSubscription(GoogleApiClient googleApiClient) {
        return ((q)googleApiClient.a(Drive.CU)).b(googleApiClient, this.MW, 1);
    }

    @Override
    public PendingResult<Status> setParents(GoogleApiClient googleApiClient, Set<DriveId> set) {
        if (set == null) {
            throw new IllegalArgumentException("ParentIds must be provided.");
        }
        if (set.isEmpty()) {
            throw new IllegalArgumentException("ParentIds must contain at least one parent.");
        }
        return googleApiClient.b(new p.a(new ArrayList<DriveId>(set)){
            final /* synthetic */ List Pc;

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new SetResourceParentsRequest(w.this.MW, this.Pc), (ac)new bb(this));
            }
        });
    }

    @Override
    public PendingResult<DriveResource.MetadataResult> updateMetadata(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("ChangeSet must be provided.");
        }
        return googleApiClient.b(new d(){

            @Override
            protected void a(q q) throws RemoteException {
                metadataChangeSet.hS().setContext(q.getContext());
                q.hY().a(new UpdateMetadataRequest(w.this.MW, metadataChangeSet.hS()), (ac)new b(this));
            }
        });
    }

    private static class a
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.MetadataBufferResult> De;

        public a(BaseImplementation.b<DriveApi.MetadataBufferResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnListParentsResponse object) throws RemoteException {
            object = new MetadataBuffer(object.ik(), null);
            this.De.b(new o.h(Status.Jv, (MetadataBuffer)object, false));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new o.h(status, null, false));
        }
    }

    private static class b
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveResource.MetadataResult> De;

        public b(BaseImplementation.b<DriveResource.MetadataResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnMetadataResponse onMetadataResponse) throws RemoteException {
            this.De.b(new c(Status.Jv, new l(onMetadataResponse.il())));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new c(status, null));
        }
    }

    private static class c
    implements DriveResource.MetadataResult {
        private final Status CM;
        private final Metadata Pd;

        public c(Status status, Metadata metadata) {
            this.CM = status;
            this.Pd = metadata;
        }

        @Override
        public Metadata getMetadata() {
            return this.Pd;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    private abstract class d
    extends p<DriveResource.MetadataResult> {
        private d() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.v(status);
        }

        public DriveResource.MetadataResult v(Status status) {
            return new c(status, null);
        }
    }

}

