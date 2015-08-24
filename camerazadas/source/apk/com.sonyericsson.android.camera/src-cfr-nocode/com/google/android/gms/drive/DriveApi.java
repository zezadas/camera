/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.query.Query;

public interface DriveApi {
    @Deprecated
    public PendingResult<Status> discardContents(GoogleApiClient var1, Contents var2);

    public PendingResult<DriveIdResult> fetchDriveId(GoogleApiClient var1, String var2);

    public DriveFolder getAppFolder(GoogleApiClient var1);

    public DriveFile getFile(GoogleApiClient var1, DriveId var2);

    public DriveFolder getFolder(GoogleApiClient var1, DriveId var2);

    public DriveFolder getRootFolder(GoogleApiClient var1);

    @Deprecated
    public PendingResult<ContentsResult> newContents(GoogleApiClient var1);

    public CreateFileActivityBuilder newCreateFileActivityBuilder();

    public PendingResult<DriveContentsResult> newDriveContents(GoogleApiClient var1);

    public OpenFileActivityBuilder newOpenFileActivityBuilder();

    public PendingResult<MetadataBufferResult> query(GoogleApiClient var1, Query var2);

    public PendingResult<Status> requestSync(GoogleApiClient var1);

    @Deprecated
    public static interface ContentsResult
    extends Result {
        public Contents getContents();
    }

    public static interface DriveContentsResult
    extends Result {
        public DriveContents getDriveContents();
    }

    public static interface DriveIdResult
    extends Result {
        public DriveId getDriveId();
    }

    public static interface MetadataBufferResult
    extends Result {
        public MetadataBuffer getMetadataBuffer();
    }

}

