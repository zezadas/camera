/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.internal.OnListParentsResponse;
import com.google.android.gms.drive.internal.OnMetadataResponse;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public class w
implements DriveResource {
    protected final DriveId MW;

    protected w(DriveId var1);

    @Override
    public PendingResult<Status> addChangeListener(GoogleApiClient var1, ChangeListener var2);

    @Override
    public PendingResult<Status> addChangeListener(GoogleApiClient var1, DriveEvent.Listener<ChangeEvent> var2);

    @Override
    public PendingResult<Status> addChangeSubscription(GoogleApiClient var1);

    @Override
    public DriveId getDriveId();

    @Override
    public PendingResult<DriveResource.MetadataResult> getMetadata(GoogleApiClient var1);

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> listParents(GoogleApiClient var1);

    @Override
    public PendingResult<Status> removeChangeListener(GoogleApiClient var1, ChangeListener var2);

    @Override
    public PendingResult<Status> removeChangeListener(GoogleApiClient var1, DriveEvent.Listener<ChangeEvent> var2);

    @Override
    public PendingResult<Status> removeChangeSubscription(GoogleApiClient var1);

    @Override
    public PendingResult<Status> setParents(GoogleApiClient var1, Set<DriveId> var2);

    @Override
    public PendingResult<DriveResource.MetadataResult> updateMetadata(GoogleApiClient var1, MetadataChangeSet var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.MetadataBufferResult> De;

        public a(BaseImplementation.b<DriveApi.MetadataBufferResult> var1);

        @Override
        public void a(OnListParentsResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveResource.MetadataResult> De;

        public b(BaseImplementation.b<DriveResource.MetadataResult> var1);

        @Override
        public void a(OnMetadataResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class c
    implements DriveResource.MetadataResult {
        private final Status CM;
        private final Metadata Pd;

        public c(Status var1, Metadata var2);

        @Override
        public Metadata getMetadata();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class d
    extends p<DriveResource.MetadataResult> {
        final /* synthetic */ w Pb;

        private d(w var1);

        /* synthetic */ d(w var1,  var2);

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveResource.MetadataResult v(Status var1);
    }

}

