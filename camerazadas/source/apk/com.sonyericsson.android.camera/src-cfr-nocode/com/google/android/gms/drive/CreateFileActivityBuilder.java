/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.content.IntentSender;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.h;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CreateFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private final h Na;
    private DriveContents Nb;

    public CreateFileActivityBuilder();

    public IntentSender build(GoogleApiClient var1);

    public CreateFileActivityBuilder setActivityStartFolder(DriveId var1);

    public CreateFileActivityBuilder setActivityTitle(String var1);

    @Deprecated
    public CreateFileActivityBuilder setInitialContents(Contents var1);

    public CreateFileActivityBuilder setInitialDriveContents(DriveContents var1);

    public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet var1);
}

