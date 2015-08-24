/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.CloseContentsAndUpdateMetadataRequest;
import com.google.android.gms.drive.internal.CloseContentsRequest;
import com.google.android.gms.drive.internal.OpenContentsRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.av;
import com.google.android.gms.drive.internal.bb;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.v;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.io.InputStream;
import java.io.OutputStream;

public class r
implements DriveContents {
    private final Contents Ox;

    public r(Contents contents) {
        this.Ox = com.google.android.gms.common.internal.o.i(contents);
    }

    /*
     * Enabled aggressive block sorting
     */
    private PendingResult<Status> a(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet, final ExecutionOptions executionOptions) {
        if (this.Ox.getMode() == 268435456) {
            throw new IllegalStateException("Cannot commit contents opened with MODE_READ_ONLY");
        }
        if (ExecutionOptions.aV(executionOptions.hQ()) && !this.Ox.hL()) {
            throw new IllegalStateException("DriveContents must be valid for conflict detection.");
        }
        ExecutionOptions.a(googleApiClient, executionOptions);
        if (this.Ox.hK()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        if (this.getDriveId() == null) {
            throw new IllegalStateException("Only DriveContents obtained through DriveFile.open can be committed.");
        }
        if (metadataChangeSet == null) {
            metadataChangeSet = MetadataChangeSet.Nt;
        }
        this.Ox.hJ();
        return googleApiClient.b(new p.a(){

            @Override
            protected void a(q q) throws RemoteException {
                metadataChangeSet.hS().setContext(q.getContext());
                q.hY().a(new CloseContentsAndUpdateMetadataRequest(r.this.Ox.getDriveId(), metadataChangeSet.hS(), r.this.Ox, executionOptions), (ac)new bb(this));
            }
        });
    }

    @Override
    public PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        return this.a(googleApiClient, metadataChangeSet, new ExecutionOptions.Builder().build());
    }

    @Override
    public PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, ExecutionOptions executionOptions) {
        return this.a(googleApiClient, metadataChangeSet, executionOptions);
    }

    @Override
    public void discard(GoogleApiClient googleApiClient) {
        if (this.Ox.hK()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        this.Ox.hJ();
        googleApiClient.b(new p.a(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new CloseContentsRequest(r.this.Ox, false), (ac)new bb(this));
            }
        }).setResultCallback(new ResultCallback<Status>(){

            public void k(Status status) {
                if (!status.isSuccess()) {
                    v.q("DriveContentsImpl", "Error discarding contents");
                    return;
                }
                v.n("DriveContentsImpl", "Contents discarded");
            }

            @Override
            public /* synthetic */ void onResult(Result result) {
                this.k((Status)result);
            }
        });
    }

    @Override
    public Contents getContents() {
        return this.Ox;
    }

    @Override
    public DriveId getDriveId() {
        return this.Ox.getDriveId();
    }

    @Override
    public InputStream getInputStream() {
        return this.Ox.getInputStream();
    }

    @Override
    public int getMode() {
        return this.Ox.getMode();
    }

    @Override
    public OutputStream getOutputStream() {
        return this.Ox.getOutputStream();
    }

    @Override
    public ParcelFileDescriptor getParcelFileDescriptor() {
        return this.Ox.getParcelFileDescriptor();
    }

    @Override
    public PendingResult<DriveApi.DriveContentsResult> reopenForWrite(GoogleApiClient googleApiClient) {
        if (this.Ox.hK()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        if (this.Ox.getMode() != 268435456) {
            throw new IllegalStateException("reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY.");
        }
        this.Ox.hJ();
        return googleApiClient.a(new o.d(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new OpenContentsRequest(r.this.getDriveId(), 536870912, r.this.Ox.getRequestId()), (ac)new av(this, null));
            }
        });
    }

}

