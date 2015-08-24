/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.i;
import com.google.android.gms.drive.internal.an;

public class OnListEntriesResponse
extends i
implements SafeParcelable {
    public static final Parcelable.Creator<OnListEntriesResponse> CREATOR = new an();
    final int BR;
    final boolean Oz;
    final DataHolder Pu;

    OnListEntriesResponse(int n, DataHolder dataHolder, boolean bl) {
        this.BR = n;
        this.Pu = dataHolder;
        this.Oz = bl;
    }

    @Override
    protected void I(Parcel parcel, int n) {
        an.a(this, parcel, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DataHolder ii() {
        return this.Pu;
    }

    public boolean ij() {
        return this.Oz;
    }
}

