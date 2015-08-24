/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.h;

public class ValuesAddedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ValuesAddedDetails> CREATOR = new h();
    final int BR;
    final String RN;
    final int RO;
    final int Rr;
    final int Rs;
    final int mIndex;

    ValuesAddedDetails(int n, int n2, int n3, int n4, String string, int n5) {
        this.BR = n;
        this.mIndex = n2;
        this.Rr = n3;
        this.Rs = n4;
        this.RN = string;
        this.RO = n5;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        h.a(this, parcel, n);
    }
}

