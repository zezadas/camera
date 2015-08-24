/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.o;

public final class ProxyCard
implements SafeParcelable {
    public static final Parcelable.Creator<ProxyCard> CREATOR = new o();
    private final int BR;
    String atF;
    String atG;
    int atH;
    int atI;

    ProxyCard(int n, String string, String string2, int n2, int n3) {
        this.BR = n;
        this.atF = string;
        this.atG = string2;
        this.atH = n2;
        this.atI = n3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getCvn() {
        return this.atG;
    }

    public int getExpirationMonth() {
        return this.atH;
    }

    public int getExpirationYear() {
        return this.atI;
    }

    public String getPan() {
        return this.atF;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        o.a(this, parcel, n);
    }
}

