/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.af;

public class ListParentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<ListParentsRequest> CREATOR = new af();
    final int BR;
    final DriveId Pj;

    ListParentsRequest(int n, DriveId driveId) {
        this.BR = n;
        this.Pj = driveId;
    }

    public ListParentsRequest(DriveId driveId) {
        this(1, driveId);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        af.a(this, parcel, n);
    }
}

