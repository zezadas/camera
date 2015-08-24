/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.j;

public class ValuesSetDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ValuesSetDetails> CREATOR = new j();
    final int BR;
    final int Rr;
    final int Rs;
    final int mIndex;

    ValuesSetDetails(int n, int n2, int n3, int n4) {
        this.BR = n;
        this.mIndex = n2;
        this.Rr = n3;
        this.Rs = n4;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

