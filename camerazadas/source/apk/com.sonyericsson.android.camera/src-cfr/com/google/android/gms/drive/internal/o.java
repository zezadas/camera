/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.internal.CloseContentsRequest;
import com.google.android.gms.drive.internal.CreateContentsRequest;
import com.google.android.gms.drive.internal.GetMetadataRequest;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDriveIdResponse;
import com.google.android.gms.drive.internal.OnListEntriesResponse;
import com.google.android.gms.drive.internal.OnMetadataResponse;
import com.google.android.gms.drive.internal.QueryRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.bb;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.r;
import com.google.android.gms.drive.internal.s;
import com.google.android.gms.drive.internal.u;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.Query;

public class o
implements DriveApi {
    public PendingResult<DriveApi.DriveContentsResult> a(GoogleApiClient googleApiClient, final int n) {
        return googleApiClient.a(new d(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new CreateContentsRequest(n), (ac)new k(this));
            }
        });
    }

    @Override
    public PendingResult<Status> discardContents(GoogleApiClient googleApiClient, final Contents contents) {
        if (contents.hK()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        contents.hJ();
        return googleApiClient.b(new p.a(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new CloseContentsRequest(contents, false), (ac)new bb(this));
            }
        });
    }

    @Override
    public PendingResult<DriveApi.DriveIdResult> fetchDriveId(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.a(new g(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new GetMetadataRequest(DriveId.bg(string)), (ac)new e(this));
            }
        });
    }

    @Override
    public DriveFolder getAppFolder(GoogleApiClient object) {
        if (!object.isConnected()) {
            throw new IllegalStateException("Client must be connected");
        }
        if ((object = ((q)object.a(Drive.CU)).ia()) != null) {
            return new u((DriveId)object);
        }
        return null;
    }

    @Override
    public DriveFile getFile(GoogleApiClient googleApiClient, DriveId driveId) {
        if (driveId == null) {
            throw new IllegalArgumentException("Id must be provided.");
        }
        if (!googleApiClient.isConnected()) {
            throw new IllegalStateException("Client must be connected");
        }
        return new s(driveId);
    }

    @Override
    public DriveFolder getFolder(GoogleApiClient googleApiClient, DriveId driveId) {
        if (driveId == null) {
            throw new IllegalArgumentException("Id must be provided.");
        }
        if (!googleApiClient.isConnected()) {
            throw new IllegalStateException("Client must be connected");
        }
        return new u(driveId);
    }

    @Override
    public DriveFolder getRootFolder(GoogleApiClient googleApiClient) {
        if (!googleApiClient.isConnected()) {
            throw new IllegalStateException("Client must be connected");
        }
        return new u(((q)googleApiClient.a(Drive.CU)).hZ());
    }

    @Override
    public PendingResult<DriveApi.ContentsResult> newContents(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new b(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new CreateContentsRequest(536870912), (ac)new j(this));
            }
        });
    }

    @Override
    public CreateFileActivityBuilder newCreateFileActivityBuilder() {
        return new CreateFileActivityBuilder();
    }

    @Override
    public PendingResult<DriveApi.DriveContentsResult> newDriveContents(GoogleApiClient googleApiClient) {
        return this.a(googleApiClient, 536870912);
    }

    @Override
    public OpenFileActivityBuilder newOpenFileActivityBuilder() {
        return new OpenFileActivityBuilder();
    }

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> query(GoogleApiClient googleApiClient, final Query query) {
        if (query == null) {
            throw new IllegalArgumentException("Query must be provided.");
        }
        return googleApiClient.a(new i(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new QueryRequest(query), (ac)new l(this));
            }
        });
    }

    @Override
    public PendingResult<Status> requestSync(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new p.a(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new bb(this));
            }
        });
    }

    static class a
    implements DriveApi.ContentsResult {
        private final Status CM;
        private final Contents Ox;

        public a(Status status, Contents contents) {
            this.CM = status;
            this.Ox = contents;
        }

        @Override
        public Contents getContents() {
            return this.Ox;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static abstract class b
    extends p<DriveApi.ContentsResult> {
        b() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.p(status);
        }

        public DriveApi.ContentsResult p(Status status) {
            return new a(status, null);
        }
    }

    static class c
    implements DriveApi.DriveContentsResult {
        private final Status CM;
        private final DriveContents Nb;

        public c(Status status, DriveContents driveContents) {
            this.CM = status;
            this.Nb = driveContents;
        }

        @Override
        public DriveContents getDriveContents() {
            return this.Nb;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static abstract class d
    extends p<DriveApi.DriveContentsResult> {
        d() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.q(status);
        }

        public DriveApi.DriveContentsResult q(Status status) {
            return new c(status, null);
        }
    }

    static class e
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.DriveIdResult> De;

        public e(BaseImplementation.b<DriveApi.DriveIdResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnDriveIdResponse onDriveIdResponse) throws RemoteException {
            this.De.b(new f(Status.Jv, onDriveIdResponse.getDriveId()));
        }

        @Override
        public void a(OnMetadataResponse onMetadataResponse) throws RemoteException {
            this.De.b(new f(Status.Jv, new com.google.android.gms.drive.internal.l(onMetadataResponse.il()).getDriveId()));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new f(status, null));
        }
    }

    private static class f
    implements DriveApi.DriveIdResult {
        private final Status CM;
        private final DriveId MW;

        public f(Status status, DriveId driveId) {
            this.CM = status;
            this.MW = driveId;
        }

        @Override
        public DriveId getDriveId() {
            return this.MW;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static abstract class g
    extends p<DriveApi.DriveIdResult> {
        g() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.r(status);
        }

        public DriveApi.DriveIdResult r(Status status) {
            return new f(status, null);
        }
    }

    static class h
    implements DriveApi.MetadataBufferResult {
        private final Status CM;
        private final MetadataBuffer Oy;
        private final boolean Oz;

        public h(Status status, MetadataBuffer metadataBuffer, boolean bl) {
            this.CM = status;
            this.Oy = metadataBuffer;
            this.Oz = bl;
        }

        @Override
        public MetadataBuffer getMetadataBuffer() {
            return this.Oy;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static abstract class i
    extends p<DriveApi.MetadataBufferResult> {
        i() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.s(status);
        }

        public DriveApi.MetadataBufferResult s(Status status) {
            return new h(status, null, false);
        }
    }

    private static class j
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.ContentsResult> De;

        public j(BaseImplementation.b<DriveApi.ContentsResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnContentsResponse onContentsResponse) throws RemoteException {
            this.De.b(new a(Status.Jv, onContentsResponse.id()));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new a(status, null));
        }
    }

    private static class k
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.DriveContentsResult> De;

        public k(BaseImplementation.b<DriveApi.DriveContentsResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnContentsResponse onContentsResponse) throws RemoteException {
            this.De.b(new c(Status.Jv, new r(onContentsResponse.id())));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new c(status, null));
        }
    }

    private static class l
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.MetadataBufferResult> De;

        public l(BaseImplementation.b<DriveApi.MetadataBufferResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnListEntriesResponse onListEntriesResponse) throws RemoteException {
            MetadataBuffer metadataBuffer = new MetadataBuffer(onListEntriesResponse.ii(), null);
            this.De.b(new h(Status.Jv, metadataBuffer, onListEntriesResponse.ij()));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new h(status, null, false));
        }
    }

    static class m
    extends p.a {
        m(GoogleApiClient googleApiClient, Status status) {
            this.a(new BaseImplementation.CallbackHandler(((q)googleApiClient.a(Drive.CU)).getLooper()));
            this.b(status);
        }

        @Override
        protected void a(q q) {
        }
    }

}

