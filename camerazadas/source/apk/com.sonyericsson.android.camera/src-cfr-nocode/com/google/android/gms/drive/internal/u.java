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
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.OnDriveIdResponse;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.internal.w;
import com.google.android.gms.drive.query.Query;

public class u
extends w
implements DriveFolder {
    public u(DriveId var1);

    private PendingResult<DriveFolder.DriveFileResult> a(GoogleApiClient var1, MetadataChangeSet var2, Contents var3, int var4, ExecutionOptions var5);

    private PendingResult<DriveFolder.DriveFileResult> a(GoogleApiClient var1, MetadataChangeSet var2, DriveContents var3, ExecutionOptions var4);

    @Override
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient var1, MetadataChangeSet var2, Contents var3);

    @Override
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient var1, MetadataChangeSet var2, DriveContents var3);

    @Override
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient var1, MetadataChangeSet var2, DriveContents var3, ExecutionOptions var4);

    @Override
    public PendingResult<DriveFolder.DriveFolderResult> createFolder(GoogleApiClient var1, MetadataChangeSet var2);

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> listChildren(GoogleApiClient var1);

    @Override
    public PendingResult<DriveApi.MetadataBufferResult> queryChildren(GoogleApiClient var1, Query var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveFolder.DriveFileResult> De;

        public a(BaseImplementation.b<DriveFolder.DriveFileResult> var1);

        @Override
        public void a(OnDriveIdResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    extends com.google.android.gms.drive.internal.c {
        private final BaseImplementation.b<DriveFolder.DriveFolderResult> De;

        public b(BaseImplementation.b<DriveFolder.DriveFolderResult> var1);

        @Override
        public void a(OnDriveIdResponse var1) throws RemoteException;

        @Override
        public void o(Status var1) throws RemoteException;
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class c
    implements DriveFolder.DriveFileResult {
        private final Status CM;
        private final DriveFile OY;

        public c(Status var1, DriveFile var2);

        @Override
        public DriveFile getDriveFile();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static abstract class d
    extends p<DriveFolder.DriveFileResult> {
        d();

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveFolder.DriveFileResult t(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class e
    implements DriveFolder.DriveFolderResult {
        private final Status CM;
        private final DriveFolder OZ;

        public e(Status var1, DriveFolder var2);

        @Override
        public DriveFolder getDriveFolder();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static abstract class f
    extends p<DriveFolder.DriveFolderResult> {
        f();

        @Override
        public /* synthetic */ Result c(Status var1);

        public DriveFolder.DriveFolderResult u(Status var1);
    }

}

