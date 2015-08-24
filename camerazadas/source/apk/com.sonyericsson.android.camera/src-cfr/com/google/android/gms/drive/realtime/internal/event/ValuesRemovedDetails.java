/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.i;

public class ValuesRemovedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ValuesRemovedDetails> CREATOR = new i();
    final int BR;
    final String RP;
    final int RQ;
    final int Rr;
    final int Rs;
    final int mIndex;

    ValuesRemovedDetails(int n, int n2, int n3, int n4, String string, int n5) {
        this.BR = n;
        this.mIndex = n2;
        this.Rr = n3;
        this.Rs = n4;
        this.RP = string;
        this.RQ = n5;
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

