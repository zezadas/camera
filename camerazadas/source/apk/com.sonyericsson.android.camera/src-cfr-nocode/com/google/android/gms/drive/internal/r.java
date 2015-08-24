/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.q;
import java.io.InputStream;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 */
public class r
implements DriveContents {
    private final Contents Ox;

    public r(Contents var1);

    private PendingResult<Status> a(GoogleApiClient var1, MetadataChangeSet var2, ExecutionOptions var3);

    static /* synthetic */ Contents a(r var0);

    @Override
    public PendingResult<Status> commit(GoogleApiClient var1, MetadataChangeSet var2);

    @Override
    public PendingResult<Status> commit(GoogleApiClient var1, MetadataChangeSet var2, ExecutionOptions var3);

    @Override
    public void discard(GoogleApiClient var1);

    @Override
    public Contents getContents();

    @Override
    public DriveId getDriveId();

    @Override
    public InputStream getInputStream();

    @Override
    public int getMode();

    @Override
    public OutputStream getOutputStream();

    @Override
    public ParcelFileDescriptor getParcelFileDescriptor();

    @Override
    public PendingResult<DriveApi.DriveContentsResult> reopenForWrite(GoogleApiClient var1);

}

