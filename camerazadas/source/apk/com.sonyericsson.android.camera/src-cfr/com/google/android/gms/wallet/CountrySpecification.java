/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.c;

@Deprecated
public class CountrySpecification
implements SafeParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new c();
    private final int BR;
    String uW;

    CountrySpecification(int n, String string) {
        this.BR = n;
        this.uW = string;
    }

    public CountrySpecification(String string) {
        this.BR = 1;
        this.uW = string;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getCountryCode() {
        return this.uW;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

