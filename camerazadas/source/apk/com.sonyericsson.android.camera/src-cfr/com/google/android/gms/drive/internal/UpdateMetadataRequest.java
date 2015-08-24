/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.bd;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class UpdateMetadataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<UpdateMetadataRequest> CREATOR = new bd();
    final int BR;
    final DriveId Od;
    final MetadataBundle Oe;

    UpdateMetadataRequest(int n, DriveId driveId, MetadataBundle metadataBundle) {
        this.BR = n;
        this.Od = driveId;
        this.Oe = metadataBundle;
    }

    public UpdateMetadataRequest(DriveId driveId, MetadataBundle metadataBundle) {
        this(1, driveId, metadataBundle);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        bd.a(this, parcel, n);
    }
}

