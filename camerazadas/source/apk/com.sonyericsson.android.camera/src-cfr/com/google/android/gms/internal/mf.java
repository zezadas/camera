/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mg;
import com.google.android.gms.internal.mp;
import java.util.List;

public class mf
implements SafeParcelable {
    public static final mg CREATOR = new mg();
    final int BR;
    private final boolean afn;
    private final List<mp> afo;

    mf(int n, boolean bl, List<mp> list) {
        this.BR = n;
        this.afn = bl;
        this.afo = list;
    }

    @Override
    public int describeContents() {
        mg mg = CREATOR;
        return 0;
    }

    public boolean me() {
        return this.afn;
    }

    public List<mp> mf() {
        return this.afo;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mg mg = CREATOR;
        mg.a(this, parcel, n);
    }
}

