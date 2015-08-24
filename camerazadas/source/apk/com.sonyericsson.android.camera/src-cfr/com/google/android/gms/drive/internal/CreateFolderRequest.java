/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.k;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CreateFolderRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateFolderRequest> CREATOR = new k();
    final int BR;
    final MetadataBundle Ol;
    final DriveId On;

    CreateFolderRequest(int n, DriveId driveId, MetadataBundle metadataBundle) {
        this.BR = n;
        this.On = o.i(driveId);
        this.Ol = o.i(metadataBundle);
    }

    public CreateFolderRequest(DriveId driveId, MetadataBundle metadataBundle) {
        this(1, driveId, metadataBundle);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        k.a(this, parcel, n);
    }
}

