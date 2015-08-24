/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oo;

public final class on
implements SafeParcelable {
    public static final Parcelable.Creator<on> CREATOR = new oo();
    private final int BR;
    int[] atN;

    on() {
        this(1, null);
    }

    on(int n, int[] arrn) {
        this.BR = n;
        this.atN = arrn;
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
        oo.a(this, parcel, n);
    }
}

