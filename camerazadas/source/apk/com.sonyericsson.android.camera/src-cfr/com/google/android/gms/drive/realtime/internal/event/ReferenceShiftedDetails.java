/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.d;

public class ReferenceShiftedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ReferenceShiftedDetails> CREATOR = new d();
    final int BR;
    final String RH;
    final String RI;
    final int RJ;
    final int RK;

    ReferenceShiftedDetails(int n, String string, String string2, int n2, int n3) {
        this.BR = n;
        this.RH = string;
        this.RI = string2;
        this.RJ = n2;
        this.RK = n3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

