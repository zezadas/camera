/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.internal.e;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CloseContentsAndUpdateMetadataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CloseContentsAndUpdateMetadataRequest> CREATOR = new e();
    final int BR;
    final String Nn;
    final boolean No;
    final DriveId Od;
    final MetadataBundle Oe;
    final Contents Of;
    final int Og;

    CloseContentsAndUpdateMetadataRequest(int n, DriveId driveId, MetadataBundle metadataBundle, Contents contents, boolean bl, String string, int n2) {
        this.BR = n;
        this.Od = driveId;
        this.Oe = metadataBundle;
        this.Of = contents;
        this.No = bl;
        this.Nn = string;
        this.Og = n2;
    }

    public CloseContentsAndUpdateMetadataRequest(DriveId driveId, MetadataBundle metadataBundle, Contents contents, ExecutionOptions executionOptions) {
        this(1, driveId, metadataBundle, contents, executionOptions.hP(), executionOptions.hO(), executionOptions.hQ());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        e.a(this, parcel, n);
    }
}

