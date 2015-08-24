/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDownloadProgressResponse;
import com.google.android.gms.drive.internal.c;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.r;

class av
extends c {
    private final BaseImplementation.b<DriveApi.DriveContentsResult> De;
    private final DriveFile.DownloadProgressListener OU;

    av(BaseImplementation.b<DriveApi.DriveContentsResult> b, DriveFile.DownloadProgressListener downloadProgressListener) {
        this.De = b;
        this.OU = downloadProgressListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(OnContentsResponse onContentsResponse) throws RemoteException {
        Status status = onContentsResponse.ie() ? new Status(-1) : Status.Jv;
        this.De.b(new o.c(status, new r(onContentsResponse.id())));
    }

    @Override
    public void a(OnDownloadProgressResponse onDownloadProgressResponse) throws RemoteException {
        if (this.OU != null) {
            this.OU.onProgress(onDownloadProgressResponse.if(), onDownloadProgressResponse.ig());
        }
    }

    @Override
    public void o(Status status) throws RemoteException {
        this.De.b(new o.c(status, null));
    }
}

