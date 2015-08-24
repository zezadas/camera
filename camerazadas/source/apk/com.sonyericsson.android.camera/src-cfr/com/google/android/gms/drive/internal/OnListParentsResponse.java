/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.i;
import com.google.android.gms.drive.internal.ao;

public class OnListParentsResponse
extends i
implements SafeParcelable {
    public static final Parcelable.Creator<OnListParentsResponse> CREATOR = new ao();
    final int BR;
    final DataHolder Pv;

    OnListParentsResponse(int n, DataHolder dataHolder) {
        this.BR = n;
        this.Pv = dataHolder;
    }

    @Override
    protected void I(Parcel parcel, int n) {
        ao.a(this, parcel, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DataHolder ik() {
        return this.Pv;
    }
}

