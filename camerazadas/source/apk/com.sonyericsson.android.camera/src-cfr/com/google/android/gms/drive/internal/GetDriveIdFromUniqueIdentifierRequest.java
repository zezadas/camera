/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.z;

public class GetDriveIdFromUniqueIdentifierRequest
implements SafeParcelable {
    public static final Parcelable.Creator<GetDriveIdFromUniqueIdentifierRequest> CREATOR = new z();
    final int BR;
    final String Ph;
    final boolean Pi;

    GetDriveIdFromUniqueIdentifierRequest(int n, String string, boolean bl) {
        this.BR = n;
        this.Ph = string;
        this.Pi = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        z.a(this, parcel, n);
    }
}

