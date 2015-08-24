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
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.CreateFileRequest;
import com.google.android.gms.drive.internal.CreateFolderRequest;
import com.google.android.gms.drive.internal.OnDriveIdResponse;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.r;
import com.google.android.gms.drive.internal.s;
import com.google.android.gms.drive.internal.w;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.Filters;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.SearchableField;
import com.google.android.gms.drive.query.SortOrder;

public class u
extends w
implements DriveFolder {
    public u(DriveId driveId) {
        super(driveId);
    }

    private PendingResult<DriveFolder.DriveFileResult> a(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet, final Contents contents, final int n, final ExecutionOptions executionOptions) {
        ExecutionOptions.a(googleApiClient, executionOptions);
        if (contents != null) {
            contents.hJ();
        }
        return googleApiClient.b(new d(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            protected void a(q q) throws RemoteException {
                metadataChangeSet.hS().setContext(q.getContext());
                int n2 = contents == null ? 0 : contents.getRequestId();
                CreateFileRequest createFileRequest = new CreateFileRequest(u.this.getDriveId(), metadataChangeSet.hS(), n2, n, executionOptions);
                q.hY().a(createFileRequest, (ac)new a(this));
            }
        });
    }

    private PendingResult<DriveFolder.DriveFileResult> a(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents, ExecutionOptions executionOptions) {
        if (driveContents == null) {
            throw new IllegalArgumentException("DriveContents must be provided.");
        }
        if (!(driveContents instanceof r)) {
            throw new IllegalArgumentException("Only DriveContents obtained from the Drive API are accepted.");
        }
        if (driveContents.getDriveId() != null) {
            throw new IllegalArgumentException("Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation.");
        }
        if (driveContents.getContents().hK()) {
            throw new IllegalArgumentException("DriveContents are already closed.");
        }
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        if ("application/vnd.google-apps.folder".equals(metadataChangeSet.getMimeType())) {
            throw new IllegalArgumentException("May not create folders (mimetype: application/vnd.google-apps.folder) using this method. Use DriveFolder.createFolder() instead.");
        }
        return this.a(googleApiClient, metadataChangeSet, driveContents.getContents(), 0, executionOptions);
    }

    @Override
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, Contents contents) {
        return this.createFile(googleApiClient, metadataChangeSet, new r(contents));
    }

    @Override
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents) {
        return this.createFile(googleApiClient, metadataChangeSet, driveContents, null);
    }

    @Override
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents, ExecutionOptions executionOptions) {
        ExecutionOptions executionOptions2 = executionOptions;
        if (executionOptions == null) {
            executionOptions2 = new ExecutionOptions.Builder().build();
        }
        if (executionOptions2.hQ() != 0) {
            throw new IllegalStateException("May not set a conflict strategy for calls to createFile.");
        }
        return this.a(googleApiClient, metadataChangeSet, driveContents, executionOptions2);
    }

    @Override
    public PendingResult<DriveFolder.DriveFolderResult> createFolder(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        if (!(metadataChangeSet.getMimeType() == null || metadataChangeSet.getMimeType().equals("application/vnd.google-apps.folder"))) {
            throw new IllegalArgumentException("The mimetype must be of type application/vnd.google-apps.folder");
        }
        return googleApiClient.b(new f(){

            @Override
            protected void a(q q) throws RemoteException {
                metadataChangeSet.hS().setContext(q.getContext());
                q.hY().a(new CreateFolderRequest(u.this.getDriveId(), metadataChangeSet.hS()), (ac)new b(this));
            }
        });
    }

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> listChildren(GoogleApiClient googleApiClient) {
        return this.queryChildren(googleApiClient, null);
    }

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> queryChildren(GoogleApiClient googleApiClient, Query query) {
        Query.Builder builder = new Query.Builder().addFilter(Filters.in(SearchableField.PARENTS, this.getDriveId()));
        if (query != null) {
            if (query.getFilter() != null) {
                builder.addFilter(query.getFilter());
            }
            builder.setPageToken(query.getPageToken());
            builder.setSortOrder(query.getSortOrder());
        }
        return new o().query(googleApiClient, builder.build());
    }

    private static class a
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveFolder.DriveFileResult> De;

        public a(BaseImplementation.b<DriveFolder.DriveFileResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnDriveIdResponse onDriveIdResponse) throws RemoteException {
            this.De.b(new c(Status.Jv, new s(onDriveIdResponse.getDriveId())));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new c(status, null));
        }
    }

    private static class b
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveFolder.DriveFolderResult> De;

        public b(BaseImplementation.b<DriveFolder.DriveFolderResult> b) {
            this.De = b;
        }

        @Override
        public void a(OnDriveIdResponse onDriveIdResponse) throws RemoteException {
            this.De.b(new e(Status.Jv, new u(onDriveIdResponse.getDriveId())));
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new e(status, null));
        }
    }

    private static class c
    implements DriveFolder.DriveFileResult {
        private final Status CM;
        private final DriveFile OY;

        public c(Status status, DriveFile driveFile) {
            this.CM = status;
            this.OY = driveFile;
        }

        @Override
        public DriveFile getDriveFile() {
            return this.OY;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static abstract class d
    extends p<DriveFolder.DriveFileResult> {
        d() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.t(status);
        }

        public DriveFolder.DriveFileResult t(Status status) {
            return new c(status, null);
        }
    }

    private static class e
    implements DriveFolder.DriveFolderResult {
        private final Status CM;
        private final DriveFolder OZ;

        public e(Status status, DriveFolder driveFolder) {
            this.CM = status;
            this.OZ = driveFolder;
        }

        @Override
        public DriveFolder getDriveFolder() {
            return this.OZ;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    static abstract class f
    extends p<DriveFolder.DriveFolderResult> {
        f() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.u(status);
        }

        public DriveFolder.DriveFolderResult u(Status status) {
            return new e(status, null);
        }
    }

}

