/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.a;

public class ObjectChangedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ObjectChangedDetails> CREATOR = new a();
    final int BR;
    final int Rr;
    final int Rs;

    ObjectChangedDetails(int n, int n2, int n3) {
        this.BR = n;
        this.Rr = n2;
        this.Rs = n3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

