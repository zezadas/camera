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
import com.google.android.gms.common.api.c;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDownloadProgressResponse;
import com.google.android.gms.drive.internal.OpenContentsRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.av;
import com.google.android.gms.drive.internal.c;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.r;
import com.google.android.gms.drive.internal.w;

public class s
extends w
implements DriveFile {
    public s(DriveId driveId) {
        super(driveId);
    }

    private static DriveFile.DownloadProgressListener a(GoogleApiClient googleApiClient, DriveFile.DownloadProgressListener downloadProgressListener) {
        if (downloadProgressListener == null) {
            return null;
        }
        return new a(googleApiClient.c(downloadProgressListener));
    }

    @Override
    public PendingResult<Status> commitAndCloseContents(GoogleApiClient googleApiClient, Contents contents) {
        return new r(contents).commit(googleApiClient, null);
    }

    @Override
    public PendingResult<Status> commitAndCloseContents(GoogleApiClient googleApiClient, Contents contents, MetadataChangeSet metadataChangeSet) {
        return new r(contents).commit(googleApiClient, metadataChangeSet);
    }

    @Override
    public PendingResult<Status> discardContents(GoogleApiClient googleApiClient, Contents contents) {
        return Drive.DriveApi.discardContents(googleApiClient, contents);
    }

    @Override
    public PendingResult<DriveApi.DriveContentsResult> open(GoogleApiClient googleApiClient, final int n, DriveFile.DownloadProgressListener downloadProgressListener) {
        if (n != 268435456 && n != 536870912 && n != 805306368) {
            throw new IllegalArgumentException("Invalid mode provided.");
        }
        return googleApiClient.a(new o.d(s.a(googleApiClient, downloadProgressListener)){
            final /* synthetic */ DriveFile.DownloadProgressListener OO;

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new OpenContentsRequest(s.this.getDriveId(), n, 0), (ac)new av(this, this.OO));
            }
        });
    }

    @Override
    public PendingResult<DriveApi.ContentsResult> openContents(GoogleApiClient googleApiClient, final int n, DriveFile.DownloadProgressListener downloadProgressListener) {
        if (n != 268435456 && n != 536870912 && n != 805306368) {
            throw new IllegalArgumentException("Invalid mode provided.");
        }
        return googleApiClient.a(new o.b(s.a(googleApiClient, downloadProgressListener)){
            final /* synthetic */ DriveFile.DownloadProgressListener OO;

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new OpenContentsRequest(s.this.getDriveId(), n, 0), (ac)new b(this, this.OO));
            }
        });
    }

    private static class a
    implements DriveFile.DownloadProgressListener {
        private final com.google.android.gms.common.api.c<DriveFile.DownloadProgressListener> OQ;

        public a(com.google.android.gms.common.api.c<DriveFile.DownloadProgressListener> c) {
            this.OQ = c;
        }

        @Override
        public void onProgress(final long l, final long l2) {
            this.OQ.a(new c.b<DriveFile.DownloadProgressListener>(){

                public void a(DriveFile.DownloadProgressListener downloadProgressListener) {
                    downloadProgressListener.onProgress(l, l2);
                }

                @Override
                public /* synthetic */ void d(Object object) {
                    this.a((DriveFile.DownloadProgressListener)object);
                }

                @Override
                public void gr() {
                }
            });
        }

    }

    private static class b
    extends c {
        private final BaseImplementation.b<DriveApi.ContentsResult> De;
        private final DriveFile.DownloadProgressListener OU;

        public b(BaseImplementation.b<DriveApi.ContentsResult> b, DriveFile.DownloadProgressListener downloadProgressListener) {
            this.De = b;
            this.OU = downloadProgressListener;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(OnContentsResponse onContentsResponse) throws RemoteException {
            Status status = onContentsResponse.ie() ? new Status(-1) : Status.Jv;
            this.De.b(new o.a(status, onContentsResponse.id()));
        }

        @Override
        public void a(OnDownloadProgressResponse onDownloadProgressResponse) throws RemoteException {
            if (this.OU != null) {
                this.OU.onProgress(onDownloadProgressResponse.if(), onDownloadProgressResponse.ig());
            }
        }

        @Override
        public void o(Status status) throws RemoteException {
            this.De.b(new o.a(status, null));
        }
    }

}

