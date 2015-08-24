/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.i;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CreateFileIntentSenderRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateFileIntentSenderRequest> CREATOR = new i();
    final int BR;
    final String Nw;
    final DriveId Ny;
    final MetadataBundle Ol;
    final Integer Om;
    final int uQ;

    CreateFileIntentSenderRequest(int n, MetadataBundle metadataBundle, int n2, String string, DriveId driveId, Integer n3) {
        this.BR = n;
        this.Ol = metadataBundle;
        this.uQ = n2;
        this.Nw = string;
        this.Ny = driveId;
        this.Om = n3;
    }

    public CreateFileIntentSenderRequest(MetadataBundle metadataBundle, int n, String string, DriveId driveId, int n2) {
        this(1, metadataBundle, n, string, driveId, n2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        i.a(this, parcel, n);
    }
}

