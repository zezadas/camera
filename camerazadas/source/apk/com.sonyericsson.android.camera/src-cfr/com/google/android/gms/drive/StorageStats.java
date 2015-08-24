/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.g;

public class StorageStats
implements SafeParcelable {
    public static final Parcelable.Creator<StorageStats> CREATOR = new g();
    final int BR;
    final long NB;
    final long NC;
    final long ND;
    final long NE;
    final int NF;

    StorageStats(int n, long l, long l2, long l3, long l4, int n2) {
        this.BR = n;
        this.NB = l;
        this.NC = l2;
        this.ND = l3;
        this.NE = l4;
        this.NF = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }
}

