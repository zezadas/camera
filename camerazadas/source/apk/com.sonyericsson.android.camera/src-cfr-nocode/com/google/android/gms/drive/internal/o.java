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
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDriveIdResponse;
import com.google.android.gms.drive.internal.OnListEntriesResponse;
import com.google.android.gms.drive.internal.OnMetadataResponse;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.query.Query;

/*
 * Exception performing whole class analysis ignored.
 */
public class o
implements DriveApi {
    public o();

    public PendingResult<DriveApi.DriveContentsResult> a(GoogleApiClient var1, int var2);

    @Override
    public PendingResult<Status> discardContents(GoogleApiClient var1, Contents var2);

    @Override
    public PendingResult<DriveApi.DriveIdResult> fetchDriveId(GoogleApiClient var1, String var2);

    @Override
    public DriveFolder getAppFolder(GoogleApiClient var1);

    @Override
    public DriveFile getFile(GoogleApiClient var1, DriveId var2);

    @Override
    public DriveFolder getFolder(GoogleApiClient var1, DriveId var2);

    @Override
    public DriveFolder getRootFolder(GoogleApiClient var1);

    @Override
    public PendingResult<DriveApi.ContentsResult> newContents(GoogleApiClient var1);

    @Override
    public CreateFileActivityBuilder newCreateFileActivityBuilder();

    @Override
    public PendingResult<DriveApi.DriveContentsResult> newDriveContents(GoogleApiClient var1);

    @Override
    public OpenFileActivityBuilder newOpenFileActivityBuilder();

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> query(GoogleApiClient var1, Query var2);

    @Override
    public PendingResult<Status> requestSync(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class a
    implements DriveApi.ContentsResult {
        private final Status CM;
        private final Contents Ox;

        public a(Status var1, Contents var2);

        @Override
        public Contents getContents();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static abstract class b
    extends p<DriveApi.ContentsResult> {
        b();

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveApi.ContentsResult p(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class c
    implements DriveApi.DriveContentsResult {
        private final Status CM;
        private final DriveContents Nb;

        public c(Status var1, DriveContents var2);

        @Override
        public DriveContents getDriveContents();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static abstract class d
    extends p<DriveApi.DriveContentsResult> {
        d();

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveApi.DriveContentsResult q(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class e
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.DriveIdResult> De;

        public e(BaseImplementation.b<DriveApi.DriveIdResult> var1);

        @Override
        public void a(OnDriveIdResponse var1) throws RemoteException;

        @Override
        public void a(OnMetadataResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class f
    implements DriveApi.DriveIdResult {
        private final Status CM;
        private final DriveId MW;

        public f(Status var1, DriveId var2);

        @Override
        public DriveId getDriveId();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static abstract class g
    extends p<DriveApi.DriveIdResult> {
        g();

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveApi.DriveIdResult r(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class h
    implements DriveApi.MetadataBufferResult {
        private final Status CM;
        private final MetadataBuffer Oy;
        private final boolean Oz;

        public h(Status var1, MetadataBuffer var2, boolean var3);

        @Override
        public MetadataBuffer getMetadataBuffer();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static abstract class i
    extends p<DriveApi.MetadataBufferResult> {
        i();

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveApi.MetadataBufferResult s(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class j
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.ContentsResult> De;

        public j(BaseImplementation.b<DriveApi.ContentsResult> var1);

        @Override
        public void a(OnContentsResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class k
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.DriveContentsResult> De;

        public k(BaseImplementation.b<DriveApi.DriveContentsResult> var1);

        @Override
        public void a(OnContentsResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class l
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveApi.MetadataBufferResult> De;

        public l(BaseImplementation.b<DriveApi.MetadataBufferResult> var1);

        @Override
        public void a(OnListEntriesResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class m
    extends p.a {
        m(GoogleApiClient var1, Status var2);

        @Override
        protected void a(q var1);
    }

}

