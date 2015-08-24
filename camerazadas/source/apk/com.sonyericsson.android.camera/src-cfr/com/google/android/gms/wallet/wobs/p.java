/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.q;

public final class p
implements SafeParcelable {
    public static final Parcelable.Creator<p> CREATOR = new q();
    private final int BR;
    String auJ;
    l auN;
    n auO;
    n auP;
    String tG;

    p() {
        this.BR = 1;
    }

    p(int n, String string, String string2, l l, n n2, n n3) {
        this.BR = n;
        this.auJ = string;
        this.tG = string2;
        this.auN = l;
        this.auO = n2;
        this.auP = n3;
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
        q.a(this, parcel, n);
    }
}

