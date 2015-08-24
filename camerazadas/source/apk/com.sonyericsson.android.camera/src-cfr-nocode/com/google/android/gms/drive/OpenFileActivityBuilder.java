/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.content.IntentSender;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.DriveId;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OpenFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private String Nw;
    private String[] Nx;
    private DriveId Ny;

    public OpenFileActivityBuilder();

    public IntentSender build(GoogleApiClient var1);

    public OpenFileActivityBuilder setActivityStartFolder(DriveId var1);

    public OpenFileActivityBuilder setActivityTitle(String var1);

    public OpenFileActivityBuilder setMimeType(String[] var1);
}

