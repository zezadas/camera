/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.h;
import com.google.android.gms.drive.internal.r;
import com.google.android.gms.internal.jy;

public class CreateFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private final h Na = new h(0);
    private DriveContents Nb;

    /*
     * Enabled aggressive block sorting
     */
    public IntentSender build(GoogleApiClient googleApiClient) {
        o.b(this.Nb, (Object)"Must provide initial contents to CreateFileActivityBuilder.");
        boolean bl = googleApiClient.a(Drive.SCOPE_FILE) || googleApiClient.a(Drive.Nc);
        o.b(bl, (Object)"The apiClient must have suitable scope to create files");
        jy.a(this.Nb.getParcelFileDescriptor());
        this.Nb.getContents().hJ();
        return this.Na.build(googleApiClient);
    }

    public CreateFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.Na.a(driveId);
        return this;
    }

    public CreateFileActivityBuilder setActivityTitle(String string) {
        this.Na.bi(string);
        return this;
    }

    @Deprecated
    public CreateFileActivityBuilder setInitialContents(Contents contents) {
        return this.setInitialDriveContents(new r(contents));
    }

    public CreateFileActivityBuilder setInitialDriveContents(DriveContents driveContents) {
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
        this.Na.bk(driveContents.getContents().getRequestId());
        this.Nb = driveContents;
        return this;
    }

    public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet metadataChangeSet) {
        this.Na.a(metadataChangeSet);
        return this;
    }
}

