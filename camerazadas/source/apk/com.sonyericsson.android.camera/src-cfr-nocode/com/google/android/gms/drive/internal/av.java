/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDownloadProgressResponse;
import com.google.android.gms.drive.internal.c;

/*
 * Exception performing whole class analysis.
 */
class av
extends c {
    private final BaseImplementation.b<DriveApi.DriveContentsResult> De;
    private final DriveFile.DownloadProgressListener OU;

    av(BaseImplementation.b<DriveApi.DriveContentsResult> var1, DriveFile.DownloadProgressListener var2);

    @Override
    public void a(OnContentsResponse var1) throws RemoteException;

    @Override
    public void a(OnDownloadProgressResponse var1) throws RemoteException;

    @Override
    public void o(Status var1) throws RemoteException;
}

