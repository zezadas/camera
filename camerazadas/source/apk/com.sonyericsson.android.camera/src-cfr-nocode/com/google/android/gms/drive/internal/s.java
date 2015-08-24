/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDownloadProgressResponse;
import com.google.android.gms.drive.internal.c;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.w;

public class s
extends w
implements DriveFile {
    public s(DriveId var1);

    private static DriveFile.DownloadProgressListener a(GoogleApiClient var0, DriveFile.DownloadProgressListener var1);

    @Override
    public PendingResult<Status> commitAndCloseContents(GoogleApiClient var1, Contents var2);

    @Override
    public PendingResult<Status> commitAndCloseContents(GoogleApiClient var1, Contents var2, MetadataChangeSet var3);

    @Override
    public PendingResult<Status> discardContents(GoogleApiClient var1, Contents var2);

    @Override
    public PendingResult<DriveApi.DriveContentsResult> open(GoogleApiClient var1, int var2, DriveFile.DownloadProgressListener var3);

    @Override
    public PendingResult<DriveApi.ContentsResult> openContents(GoogleApiClient var1, int var2, DriveFile.DownloadProgressListener var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    implements DriveFile.DownloadProgressListener {
        private final com.google.android.gms.common.api.c<DriveFile.DownloadProgressListener> OQ;

        public a(com.google.android.gms.common.api.c<DriveFile.DownloadProgressListener> var1);

        @Override
        public void onProgress(long var1, long var3);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    extends c {
        private final BaseImplementation.b<DriveApi.ContentsResult> De;
        private final DriveFile.DownloadProgressListener OU;

        public b(BaseImplementation.b<DriveApi.ContentsResult> var1, DriveFile.DownloadProgressListener var2);

        @Override
        public void a(OnContentsResponse var1) throws RemoteException;

        @Override
        public void a(OnDownloadProgressResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

}

