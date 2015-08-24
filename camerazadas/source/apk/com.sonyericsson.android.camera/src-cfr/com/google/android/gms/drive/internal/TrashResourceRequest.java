/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.bc;

public class TrashResourceRequest
implements SafeParcelable {
    public static final Parcelable.Creator<TrashResourceRequest> CREATOR = new bc();
    final int BR;
    final DriveId Od;

    TrashResourceRequest(int n, DriveId driveId) {
        this.BR = n;
        this.Od = driveId;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        bc.a(this, parcel, n);
    }
}

