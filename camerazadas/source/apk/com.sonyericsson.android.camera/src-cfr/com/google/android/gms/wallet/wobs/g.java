/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.h;

public final class g
implements SafeParcelable {
    public static final Parcelable.Creator<g> CREATOR = new h();
    private final int BR;
    int auD;
    String auE;
    double auF;
    String auG;
    long auH;
    int auI;

    g() {
        this.BR = 1;
        this.auI = -1;
        this.auD = -1;
        this.auF = -1.0;
    }

    g(int n, int n2, String string, double d, String string2, long l, int n3) {
        this.BR = n;
        this.auD = n2;
        this.auE = string;
        this.auF = d;
        this.auG = string2;
        this.auH = l;
        this.auI = n3;
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
        h.a(this, parcel, n);
    }
}

