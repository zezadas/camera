/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.g;
import com.google.android.gms.wallet.wobs.i;
import com.google.android.gms.wallet.wobs.l;

public final class f
implements SafeParcelable {
    public static final Parcelable.Creator<f> CREATOR = new i();
    private final int BR;
    l atc;
    g auC;
    String label;
    String type;

    f() {
        this.BR = 1;
    }

    f(int n, String string, g g, String string2, l l) {
        this.BR = n;
        this.label = string;
        this.auC = g;
        this.type = string2;
        this.atc = l;
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
        i.a(this, parcel, n);
    }
}

