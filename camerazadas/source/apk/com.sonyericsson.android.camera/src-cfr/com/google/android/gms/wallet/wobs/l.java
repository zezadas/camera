/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.m;

public final class l
implements SafeParcelable {
    public static final Parcelable.Creator<l> CREATOR = new m();
    private final int BR;
    long auK;
    long auL;

    l() {
        this.BR = 1;
    }

    l(int n, long l, long l2) {
        this.BR = n;
        this.auK = l;
        this.auL = l2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        m.a(this, parcel, n);
    }
}

