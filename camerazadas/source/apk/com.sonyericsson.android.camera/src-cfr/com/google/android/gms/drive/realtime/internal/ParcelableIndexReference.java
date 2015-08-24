/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.q;

public class ParcelableIndexReference
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableIndexReference> CREATOR = new q();
    final int BR;
    final String Rp;
    final boolean Rq;
    final int mIndex;

    ParcelableIndexReference(int n, String string, int n2, boolean bl) {
        this.BR = n;
        this.Rp = string;
        this.mIndex = n2;
        this.Rq = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        q.a(this, parcel, n);
    }
}

